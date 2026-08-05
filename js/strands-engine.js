// Standalone High-Performance WebGL Shader Engine for Strands & 3D Glass Refraction
(function() {
  function createStrandsEngine(containerId) {
    const ctn = document.getElementById(containerId);
    if (!ctn) return;

    let canvas = ctn.querySelector('canvas');
    if (!canvas) {
      canvas = document.createElement('canvas');
      canvas.style.display = 'block';
      canvas.style.width = '100%';
      canvas.style.height = '100%';
      ctn.appendChild(canvas);
    }

    const gl = canvas.getContext('webgl2', { alpha: true, premultipliedAlpha: true, antialias: true })
            || canvas.getContext('webgl', { alpha: true, premultipliedAlpha: true, antialias: true })
            || canvas.getContext('experimental-webgl');

    if (!gl) {
      console.error('WebGL not supported');
      return;
    }

    gl.enable(gl.BLEND);
    gl.blendFunc(gl.ONE, gl.ONE_MINUS_SRC_ALPHA);

    // Full-screen quad geometry
    const positionBuffer = gl.createBuffer();
    gl.bindBuffer(gl.ARRAY_BUFFER, positionBuffer);
    gl.bufferData(gl.ARRAY_BUFFER, new Float32Array([
      -1, -1,  1, -1, -1,  1,
      -1,  1,  1, -1,  1,  1
    ]), gl.STATIC_DRAW);

    // Shaders
    const VERT = `
      attribute vec2 position;
      void main() {
        gl_Position = vec4(position, 0.0, 1.0);
      }
    `;

    const FRAG = `
      precision highp float;

      uniform float uTime;
      uniform vec2 uResolution;
      uniform vec3 uColors[8];
      uniform int uColorCount;
      uniform int uStrandCount;
      uniform float uSpeed;
      uniform float uAmplitude;
      uniform float uWaviness;
      uniform float uThickness;
      uniform float uGlow;
      uniform float uTaper;
      uniform float uSpread;
      uniform float uHueShift;
      uniform float uIntensity;
      uniform float uOpacity;
      uniform float uScale;
      uniform float uSaturation;

      const float PI = 3.14159265359;

      vec3 spectrum(float t) {
        return 0.5 + 0.5 * cos(2.0 * PI * (t + vec3(0.00, 0.33, 0.67)));
      }

      vec3 samplePalette(float t) {
        t = fract(t);
        float scaled = t * float(uColorCount);
        int idx = int(floor(scaled));
        float blend = fract(scaled);
        
        vec3 c1 = uColors[0];
        vec3 c2 = uColors[1];
        
        if (idx == 0) { c1 = uColors[0]; c2 = uColors[1]; }
        else if (idx == 1) { c1 = uColors[1]; c2 = uColors[2]; }
        else if (idx == 2) { c1 = uColors[2]; c2 = uColors[3]; }
        else if (idx == 3) { c1 = uColors[3]; c2 = uColors[4]; }
        else if (idx == 4) { c1 = uColors[4]; c2 = uColors[5]; }
        else if (idx == 5) { c1 = uColors[5]; c2 = uColors[6]; }
        else if (idx == 6) { c1 = uColors[6]; c2 = uColors[7]; }
        else if (idx == 7) { c1 = uColors[7]; c2 = uColors[0]; }
        
        return mix(c1, c2, blend);
      }

      vec3 strandColor(float t) {
        if (uColorCount > 0) return samplePalette(t);
        return spectrum(t);
      }

      void main() {
        vec2 uv = (gl_FragCoord.xy - 0.5 * uResolution) / uResolution.y;
        uv /= max(uScale, 0.0001);

        float e = 0.06 + uIntensity * 0.94;
        float env = pow(max(cos(uv.x * PI * 1.3), 0.0), uTaper);

        vec3 col = vec3(0.0);

        for (int i = 0; i < 12; i++) {
          if (i >= uStrandCount) break;

          float fi = float(i);
          float ph = fi * 1.7 * uSpread;
          float freq = (2.0 + fi * 0.35) * uWaviness;
          float spd = 1.4 + fi * 1.2;

          float tt = uTime * uSpeed;
          float w = sin(uv.x * freq + tt * spd + ph) * 0.60
                  + sin(uv.x * freq * 1.1 - tt * spd * 0.7 + ph * 1.7) * 0.40;

          float amp = (0.1 + 0.02 * e) * env * uAmplitude;
          float y = w * amp;

          float d = abs(uv.y - y);
          float thick = (0.001 + 0.05 * e) * (0.35 + env) * uThickness;
          float g = thick / (d + thick * 0.45);
          g = g * g;

          float h = fi / float(uStrandCount) + uv.x * 0.30 + uTime * 0.04 + uHueShift;
          col += strandColor(h) * g * env;
        }

        col *= 0.45 + 0.7 * e;
        col = 1.0 - exp(-col * uGlow);

        float gray = dot(col, vec3(0.2126, 0.7152, 0.0722));
        col = max(mix(vec3(gray), col, uSaturation), 0.0);

        float lum = max(max(col.r, col.g), col.b);
        float alpha = clamp(lum, 0.0, 1.0) * uOpacity;

        gl_FragColor = vec4(col * uOpacity, alpha);
      }
    `;

    const GLASS_FRAG = `
      precision highp float;

      uniform sampler2D uScene;
      uniform vec2 uResolution;
      uniform float uRadius;
      uniform float uRefraction;
      uniform float uDispersion;

      vec2 toUv(vec2 p) {
        return p * (uResolution.y / uResolution) + 0.5;
      }

      void main() {
        // Shift glass sphere center to the LEFT side
        vec2 glassCenter = vec2(-0.25, 0.0);
        vec2 p = (gl_FragCoord.xy - 0.5 * uResolution) / uResolution.y - glassCenter;
        
        float d = length(p);
        float r = uRadius;

        // 1. 3D Volumetric Drop Shadow
        vec2 lightDir = normalize(vec2(-0.55, 0.75));
        vec2 shadowOffset = -lightDir * r * 0.35;
        vec2 sp = p - shadowOffset;
        float sd = length(sp);
        
        float shadowMask = 1.0 - smoothstep(r * 0.4, r * 1.4, sd);
        float shadowAlpha = shadowMask * 0.55;

        vec2 sceneP = (gl_FragCoord.xy - 0.5 * uResolution) / uResolution.y;
        vec3 bgScene = texture2D(uScene, toUv(sceneP)).rgb;

        bgScene = mix(bgScene, bgScene * 0.20, shadowAlpha);

        float edge = 0.005;
        float mask = 1.0 - smoothstep(r - edge, r + edge, d);
        if (mask <= 0.0) {
          float bgLum = max(max(bgScene.r, bgScene.g), bgScene.b);
          gl_FragColor = vec4(bgScene, clamp(bgLum + shadowAlpha * 0.35, 0.0, 1.0));
          return;
        }

        // 2. 3D Glass Sphere Refraction & Lighting
        float z = sqrt(max(r * r - d * d, 0.0)) / r;
        float nd = d / r;

        vec2 dir = d > 0.0 ? p / d : vec2(0.0);
        float lens = smoothstep(0.80, 1.0, nd) * pow(nd, 5.0);
        vec2 offset = -dir * lens * uRefraction * 0.15;
        vec2 disp = -dir * lens * uDispersion * 0.014;

        vec3 light;
        light.r = texture2D(uScene, toUv(sceneP + offset - disp)).r;
        light.g = texture2D(uScene, toUv(sceneP + offset)).g;
        light.b = texture2D(uScene, toUv(sceneP + offset + disp)).b;

        float fres = pow(1.0 - z, 3.5);
        vec3 rim = vec3(1.0) * fres * 0.28;

        float spec1 = pow(max(dot(dir, -lightDir), 0.0), 16.0) * z;
        float spec2 = pow(max(dot(dir, vec2(0.6, -0.6)), 0.0), 8.0) * 0.15;
        float innerShadow = smoothstep(0.0, r, d) * (1.0 - z) * 0.35;

        vec3 emissive = light * (1.0 - innerShadow) + rim + vec3(spec1 * 0.65 + spec2);
        float emissiveA = clamp(max(max(emissive.r, emissive.g), emissive.b), 0.0, 1.0);

        float bodyA = 0.08 + fres * 0.12;
        float outA = emissiveA + bodyA * (1.0 - emissiveA);

        gl_FragColor = vec4(emissive * mask, outA * mask);
      }
    `;

    function compileShader(type, source) {
      const shader = gl.createShader(type);
      gl.shaderSource(shader, source);
      gl.compileShader(shader);
      if (!gl.getShaderParameter(shader, gl.COMPILE_STATUS)) {
        console.error('Shader compile error:', gl.getShaderInfoLog(shader));
        gl.deleteShader(shader);
        return null;
      }
      return shader;
    }

    function createProgram(vsSource, fsSource) {
      const vs = compileShader(gl.VERTEX_SHADER, vsSource);
      const fs = compileShader(gl.FRAGMENT_SHADER, fsSource);
      if (!vs || !fs) return null;

      const prog = gl.createProgram();
      gl.attachShader(prog, vs);
      gl.attachShader(prog, fs);
      gl.linkProgram(prog);

      if (!gl.getProgramParameter(prog, gl.LINK_STATUS)) {
        console.error('Program link error:', gl.getProgramInfoLog(prog));
        return null;
      }
      return prog;
    }

    const strandsProg = createProgram(VERT, FRAG);
    const glassProg = createProgram(VERT, GLASS_FRAG);

    if (!strandsProg || !glassProg) return;

    function hexToRgb(hex) {
      hex = hex.replace('#', '');
      if (hex.length === 3) hex = hex.split('').map(c => c + c).join('');
      const num = parseInt(hex, 16);
      return [(num >> 16 & 255) / 255, (num >> 8 & 255) / 255, (num & 255) / 255];
    }

    function buildPalette(colors) {
      const filled = colors && colors.length ? colors : ['#ffffff'];
      const padded = [];
      for (let i = 0; i < 8; i++) {
        const hex = filled[i] ?? filled[filled.length - 1];
        const rgb = hexToRgb(hex);
        padded.push(rgb[0], rgb[1], rgb[2]);
      }
      return new Float32Array(padded);
    }

    let fbo = null, fboTexture = null;
    let width = 0, height = 0;

    function initFBO(w, h) {
      if (fbo) gl.deleteFramebuffer(fbo);
      if (fboTexture) gl.deleteTexture(fboTexture);

      fbo = gl.createFramebuffer();
      gl.bindFramebuffer(gl.FRAMEBUFFER, fbo);

      fboTexture = gl.createTexture();
      gl.bindTexture(gl.TEXTURE_2D, fboTexture);
      gl.texImage2D(gl.TEXTURE_2D, 0, gl.RGBA, w, h, 0, gl.RGBA, gl.UNSIGNED_BYTE, null);
      gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.LINEAR);
      gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MAG_FILTER, gl.LINEAR);
      gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_S, gl.CLAMP_TO_EDGE);
      gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_T, gl.CLAMP_TO_EDGE);

      gl.framebufferTexture2D(gl.FRAMEBUFFER, gl.COLOR_ATTACHMENT0, gl.TEXTURE_2D, fboTexture, 0);
      gl.bindFramebuffer(gl.FRAMEBUFFER, null);
    }

    function resize() {
      const w = ctn.offsetWidth || 800;
      const h = ctn.offsetHeight || 600;
      if (w === width && h === height) return;
      width = w;
      height = h;

      canvas.width = Math.floor(w * window.devicePixelRatio);
      canvas.height = Math.floor(h * window.devicePixelRatio);
      gl.viewport(0, 0, canvas.width, canvas.height);

      initFBO(canvas.width, canvas.height);
    }

    window.addEventListener('resize', resize);
    resize();

    let params = {
      colors: ['#F97316', '#7C3AED', '#06B6D4'],
      count: 10,
      speed: 0.3,
      amplitude: 1.6,
      waviness: 0.8,
      thickness: 1.1,
      glow: 3.0,
      taper: 2.3,
      spread: 1.5,
      hueShift: 0.13,
      intensity: 0.0,
      saturation: 2.0,
      opacity: 1.0,
      scale: 0.7,
      glass: true,
      refraction: 0.5,
      dispersion: 4.0,
      glassSize: 0.52
    };

    function render(t) {
      resize();

      const time = t * 0.001;
      const w = canvas.width;
      const h = canvas.height;

      if (params.glass) {
        gl.bindFramebuffer(gl.FRAMEBUFFER, fbo);
      } else {
        gl.bindFramebuffer(gl.FRAMEBUFFER, null);
      }

      gl.viewport(0, 0, w, h);
      gl.clearColor(0, 0, 0, 0);
      gl.clear(gl.COLOR_BUFFER_BIT);

      gl.useProgram(strandsProg);

      const posLoc = gl.getAttribLocation(strandsProg, 'position');
      gl.bindBuffer(gl.ARRAY_BUFFER, positionBuffer);
      gl.enableVertexAttribArray(posLoc);
      gl.vertexAttribPointer(posLoc, 2, gl.FLOAT, false, 0, 0);

      gl.uniform1f(gl.getUniformLocation(strandsProg, 'uTime'), time);
      gl.uniform2f(gl.getUniformLocation(strandsProg, 'uResolution'), w, h);
      gl.uniform3fv(gl.getUniformLocation(strandsProg, 'uColors'), buildPalette(params.colors));
      gl.uniform1i(gl.getUniformLocation(strandsProg, 'uColorCount'), Math.min(params.colors.length, 8));
      gl.uniform1i(gl.getUniformLocation(strandsProg, 'uStrandCount'), Math.min(Math.max(Math.round(params.count), 1), 12));
      gl.uniform1f(gl.getUniformLocation(strandsProg, 'uSpeed'), params.speed);
      gl.uniform1f(gl.getUniformLocation(strandsProg, 'uAmplitude'), params.amplitude);
      gl.uniform1f(gl.getUniformLocation(strandsProg, 'uWaviness'), params.waviness);
      gl.uniform1f(gl.getUniformLocation(strandsProg, 'uThickness'), params.thickness);
      gl.uniform1f(gl.getUniformLocation(strandsProg, 'uGlow'), params.glow);
      gl.uniform1f(gl.getUniformLocation(strandsProg, 'uTaper'), params.taper);
      gl.uniform1f(gl.getUniformLocation(strandsProg, 'uSpread'), params.spread);
      gl.uniform1f(gl.getUniformLocation(strandsProg, 'uHueShift'), params.hueShift);
      gl.uniform1f(gl.getUniformLocation(strandsProg, 'uIntensity'), params.intensity);
      gl.uniform1f(gl.getUniformLocation(strandsProg, 'uOpacity'), params.opacity);
      gl.uniform1f(gl.getUniformLocation(strandsProg, 'uScale'), params.scale);
      gl.uniform1f(gl.getUniformLocation(strandsProg, 'uSaturation'), params.saturation);

      gl.drawArrays(gl.TRIANGLES, 0, 6);

      if (params.glass) {
        gl.bindFramebuffer(gl.FRAMEBUFFER, null);
        gl.viewport(0, 0, w, h);
        gl.clearColor(0, 0, 0, 0);
        gl.clear(gl.COLOR_BUFFER_BIT);

        gl.useProgram(glassProg);

        const glassPosLoc = gl.getAttribLocation(glassProg, 'position');
        gl.bindBuffer(gl.ARRAY_BUFFER, positionBuffer);
        gl.enableVertexAttribArray(glassPosLoc);
        gl.vertexAttribPointer(glassPosLoc, 2, gl.FLOAT, false, 0, 0);

        gl.activeTexture(gl.TEXTURE0);
        gl.bindTexture(gl.TEXTURE_2D, fboTexture);
        gl.uniform1i(gl.getUniformLocation(glassProg, 'uScene'), 0);

        gl.uniform2f(gl.getUniformLocation(glassProg, 'uResolution'), w, h);
        gl.uniform1f(gl.getUniformLocation(glassProg, 'uRadius'), 0.46 * params.glassSize);
        gl.uniform1f(gl.getUniformLocation(glassProg, 'uRefraction'), params.refraction);
        gl.uniform1f(gl.getUniformLocation(glassProg, 'uDispersion'), params.dispersion);

        gl.drawArrays(gl.TRIANGLES, 0, 6);
      }

      requestAnimationFrame(render);
    }

    requestAnimationFrame(render);
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', () => createStrandsEngine('strandsCanvasContainer'));
  } else {
    createStrandsEngine('strandsCanvasContainer');
  }
})();
