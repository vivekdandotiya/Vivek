/**
 * LITHOS / JAINIL PATEL PORTFOLIO ENGINE
 * 3D WebGL Scenes, Interactive Laser Deck, Typing Terminal & Motion Engine
 */

document.addEventListener('DOMContentLoaded', () => {
  initCustomCursor();
  initScrollParallax();
  initCardDeckInteractions();
  initBlackStoneWebGL();
  initKeyboardTerminalWebGL();
  initLiveTypewriter();
});

/* ==================== 1. CUSTOM CURSOR ==================== */
function initCustomCursor() {
  const dot = document.getElementById('custom-cursor');
  const follower = document.getElementById('cursor-follower');
  if (!dot || !follower) return;

  let mouseX = window.innerWidth / 2;
  let mouseY = window.innerHeight / 2;
  let followerX = mouseX;
  let followerY = mouseY;

  window.addEventListener('mousemove', (e) => {
    mouseX = e.clientX;
    mouseY = e.clientY;
    dot.style.transform = `translate(${mouseX}px, ${mouseY}px) translate(-50%, -50%)`;
  });

  function renderFollower() {
    followerX += (mouseX - followerX) * 0.15;
    followerY += (mouseY - followerY) * 0.15;
    follower.style.transform = `translate(${followerX}px, ${followerY}px) translate(-50%, -50%)`;
    requestAnimationFrame(renderFollower);
  }
  renderFollower();
}

/* ==================== 2. SCROLL PARALLAX ==================== */
function initScrollParallax() {
  const hero = document.querySelector('.hero-section');
  if (!hero) return;

  window.addEventListener('scroll', () => {
    const scrollY = window.scrollY;
    if (scrollY > 50) {
      hero.classList.add('scrolled');
    } else {
      hero.classList.remove('scrolled');
    }
  });
}

/* ==================== 3. CARD DECK INTERACTIONS ==================== */
function initCardDeckInteractions() {
  const cards = document.querySelectorAll('.card-interactive');

  cards.forEach(card => {
    const canvas = card.querySelector('.card-laser-canvas');
    if (!canvas) return;
    const ctx = canvas.getContext('2d');
    const cardType = canvas.getAttribute('data-card-type') || 'obsidian';

    let width = card.clientWidth;
    let height = card.clientHeight;

    function resize() {
      width = card.clientWidth;
      height = card.clientHeight;
      canvas.width = width;
      canvas.height = height;
    }
    resize();
    window.addEventListener('resize', resize);

    let targetX = width / 2;
    let targetY = height / 2;
    let currentX = width / 2;
    let currentY = height / 2;
    let isHovered = false;
    let animFrame = null;

    // Geometric circuit segments (fixed geometry matching reference video)
    const circuitSegments = [
      { x1: 0, y1: height * 0.78, x2: width, y2: height * 0.22 },
      { x1: 0, y1: height * 0.25, x2: width, y2: height * 0.75 },
      { x1: width, y1: height * 0.42, x2: width * 0.68, y2: height * 0.58 },
      { x1: width * 0.68, y1: height * 0.58, x2: width * 0.68, y2: height * 0.67 },
      { x1: width * 0.68, y1: height * 0.67, x2: width, y2: height * 0.75 },
      { x1: width * 0.25, y1: height, x2: width * 0.62, y2: height * 0.5 },
      { x1: width * 0.62, y1: height * 0.5, x2: width, y2: height * 0.67 }
    ];

    // Flare nodes at line intersections
    const flareNodes = [
      { x: width * 0.55, y: height * 0.47 },
      { x: width * 0.88, y: height * 0.68 },
      { x: width * 0.68, y: height * 0.58 },
      { x: width * 0.62, y: height * 0.5 }
    ];

    function distToSegment(px, py, x1, y1, x2, y2) {
      const l2 = (x2 - x1) ** 2 + (y2 - y1) ** 2;
      if (l2 === 0) return Math.hypot(px - x1, py - y1);
      let t = ((px - x1) * (x2 - x1) + (py - y1) * (y2 - y1)) / l2;
      t = Math.max(0, Math.min(1, t));
      const projX = x1 + t * (x2 - x1);
      const projY = y1 + t * (y2 - y1);
      return Math.hypot(px - projX, py - projY);
    }

    function renderLaserSpotlight() {
      currentX += (targetX - currentX) * 0.18;
      currentY += (targetY - currentY) * 0.18;

      ctx.clearRect(0, 0, width, height);

      if (isHovered) {
        const radius = 175; // Spotlight reveal radius around cursor

        let strokeStyle = '#ffffff';
        let glowColor = '#ffffff';
        if (cardType === 'amber') {
          strokeStyle = '#ff9e00';
          glowColor = '#ffaa00';
        } else if (cardType === 'holographic') {
          strokeStyle = '#00d2ff';
          glowColor = '#ff90d0';
        }

        ctx.shadowColor = glowColor;

        // Render circuit line segments ONLY inside spotlight radius
        circuitSegments.forEach(seg => {
          const dist = distToSegment(currentX, currentY, seg.x1, seg.y1, seg.x2, seg.y2);
          if (dist < radius) {
            const alpha = Math.pow(1 - dist / radius, 1.3);

            ctx.shadowBlur = 14 * alpha;
            ctx.strokeStyle = strokeStyle;
            ctx.globalAlpha = alpha * 0.95;
            ctx.lineWidth = 1.6;

            ctx.beginPath();
            ctx.moveTo(seg.x1, seg.y1);
            ctx.lineTo(seg.x2, seg.y2);
            ctx.stroke();
          }
        });

        // Render Starburst Flares on nodes inside spotlight radius
        flareNodes.forEach(node => {
          const d = Math.hypot(currentX - node.x, currentY - node.y);
          if (d < radius) {
            const alpha = Math.pow(1 - d / radius, 1.2);
            ctx.globalAlpha = alpha;

            // Flare center dot
            ctx.fillStyle = '#ffffff';
            ctx.beginPath();
            ctx.arc(node.x, node.y, 3, 0, Math.PI * 2);
            ctx.fill();

            // Starburst cross rays
            ctx.strokeStyle = strokeStyle;
            ctx.lineWidth = 2;
            const size = 10 * alpha;

            ctx.beginPath();
            ctx.moveTo(node.x - size, node.y);
            ctx.lineTo(node.x + size, node.y);
            ctx.moveTo(node.x, node.y - size);
            ctx.lineTo(node.x, node.y + size);
            ctx.stroke();
          }
        });

        ctx.globalAlpha = 1.0;
        animFrame = requestAnimationFrame(renderLaserSpotlight);
      }
    }

    card.addEventListener('mouseenter', () => {
      isHovered = true;
      cancelAnimationFrame(animFrame);
      renderLaserSpotlight();
    });

    card.addEventListener('mousemove', (e) => {
      const rect = card.getBoundingClientRect();
      targetX = e.clientX - rect.left;
      targetY = e.clientY - rect.top;

      const pctX = (targetX / rect.width) * 100;
      const pctY = (targetY / rect.height) * 100;
      card.style.setProperty('--mouse-x', `${pctX}%`);
      card.style.setProperty('--mouse-y', `${pctY}%`);

      // Smooth 3D tilt
      const tiltX = (targetY / rect.height - 0.5) * -10;
      const tiltY = (targetX / rect.width - 0.5) * 10;
      card.style.transform = `translateY(-8px) rotateX(${tiltX}deg) rotateY(${tiltY}deg)`;
    });

    card.addEventListener('mouseleave', () => {
      isHovered = false;
      cancelAnimationFrame(animFrame);
      card.style.transform = 'translateY(0) rotateX(0) rotateY(0)';
      ctx.clearRect(0, 0, width, height);
    });
  });
}

/* ==================== 4. BLACK STONE 3D WEBGL SCENE ==================== */
function initBlackStoneWebGL() {
  const canvas = document.getElementById('stone-webgl-canvas');
  if (!canvas || typeof THREE === 'undefined') return;

  const container = canvas.parentElement;
  let width = container.clientWidth;
  let height = container.clientHeight;

  const scene = new THREE.Scene();
  const camera = new THREE.PerspectiveCamera(38, width / height, 0.1, 1000);
  camera.position.set(0, 0, 7.5);

  const renderer = new THREE.WebGLRenderer({ canvas, antialias: true, alpha: true });
  renderer.setSize(width, height);
  renderer.setPixelRatio(Math.min(window.devicePixelRatio, 2));

  // High-Density Carved Volcanic Obsidian Mineral Geometry
  const baseGeometry = new THREE.IcosahedronGeometry(2.2, 5);
  const position = baseGeometry.attributes.position;

  // Sculpt organic pitted craters, deep vertical mineral grooves, and chiseled rock facets
  for (let i = 0; i < position.count; i++) {
    let px = position.getX(i);
    let py = position.getY(i);
    let pz = position.getZ(i);

    const normY = py / 2.2; // -1 to +1 normalized height
    const taper = (normY > 0) ? (1.0 - normY * 0.35) : (1.0 + normY * 0.15); // Taper top peak

    // Volcanic crater & mineral groove noise layers
    const n1 = Math.sin(px * 3.5 + py * 1.5) * Math.cos(pz * 3.5) * 0.38;
    const n2 = Math.sin(py * 6.0) * Math.cos(px * 5.0 + pz * 5.0) * 0.14;
    const crater = (py < 0.4 && py > -1.4 && px < 0.6) ? -Math.sin((py + 0.5) * 1.8) * 0.32 : 0;

    const displacement = (1.0 + n1 + n2 + crater) * taper;

    position.setXYZ(
      i,
      px * displacement,
      py * 1.35 + n1 * 0.18,
      pz * displacement
    );
  }
  baseGeometry.computeVertexNormals();

  // Material 1: Deep Glossy Volcanic Obsidian Mineral Surface
  const stoneMaterial = new THREE.MeshStandardMaterial({
    color: 0x090b0e,
    roughness: 0.14,
    metalness: 0.94,
    flatShading: true
  });

  const stoneMesh = new THREE.Mesh(baseGeometry, stoneMaterial);
  scene.add(stoneMesh);

  // Material 2: Liquid Electric Blue Crevice Specular Glow Layer
  const liquidBlueMaterial = new THREE.MeshStandardMaterial({
    color: 0x0033ff,
    emissive: 0x00a2ff,
    emissiveIntensity: 1.2,
    roughness: 0.08,
    metalness: 0.95,
    transparent: true,
    opacity: 0,
    flatShading: true
  });
  const liquidBlueMesh = new THREE.Mesh(baseGeometry.clone(), liquidBlueMaterial);
  liquidBlueMesh.scale.set(0.993, 0.993, 0.993);
  stoneMesh.add(liquidBlueMesh);

  // Studio Lighting setup
  const ambientLight = new THREE.AmbientLight(0x0e1015, 0.7);
  scene.add(ambientLight);

  // Studio Key Light (Top-Right)
  const keyLight = new THREE.DirectionalLight(0xffffff, 3.2);
  keyLight.position.set(6, 10, 6);
  scene.add(keyLight);

  // Studio Rim Light (Bottom-Left)
  const rimLight = new THREE.DirectionalLight(0x1a2b40, 1.2);
  scene.add(rimLight);
  rimLight.position.set(-6, -4, -4);

  // Liquid Blue Specular Crevice Light (Positioned in lower-left cavities)
  const bluePointLight = new THREE.PointLight(0x00d2ff, 0, 14);
  bluePointLight.position.set(-0.8, -1.1, 2.0);
  scene.add(bluePointLight);

  const blueRimLight = new THREE.DirectionalLight(0x0055ff, 0);
  blueRimLight.position.set(-2, -5, 3);
  scene.add(blueRimLight);

  // Interaction variables
  let isHovered = false;
  let mouseX = 0, mouseY = 0;
  let targetRotX = 0, targetRotY = 0;
  let currentBlueIntensity = 0;

  window.addEventListener('mousemove', (e) => {
    const rect = canvas.getBoundingClientRect();
    if (e.clientX >= rect.left && e.clientX <= rect.right &&
        e.clientY >= rect.top && e.clientY <= rect.bottom) {
      isHovered = true;
      mouseX = (e.clientX - rect.left - rect.width / 2) / (rect.width / 2);
      mouseY = (e.clientY - rect.top - rect.height / 2) / (rect.height / 2);

      targetRotY = mouseX * 0.8;
      targetRotX = mouseY * 0.5;

      bluePointLight.position.x = -0.8 + mouseX * 2;
      bluePointLight.position.y = -1.1 - mouseY * 1.5;
    } else {
      isHovered = false;
    }
  });

  const clock = new THREE.Clock();

  function animate() {
    requestAnimationFrame(animate);
    const elapsedTime = clock.getElapsedTime();

    // Smooth levitation rotation & hover tracking
    stoneMesh.rotation.y += 0.004 + (targetRotY - stoneMesh.rotation.y) * 0.05;
    stoneMesh.rotation.x += (targetRotX - stoneMesh.rotation.x) * 0.05;

    // Levitation floating motion
    stoneMesh.position.y = Math.sin(elapsedTime * 1.3) * 0.14;

    // Electric blue liquid crevice glow ONLY on hover
    const targetVal = isHovered ? 1.0 : 0.0;
    currentBlueIntensity += (targetVal - currentBlueIntensity) * 0.08;

    liquidBlueMaterial.opacity = currentBlueIntensity * (0.88 + Math.sin(elapsedTime * 4.5) * 0.12);
    bluePointLight.intensity = currentBlueIntensity * (9.0 + Math.sin(elapsedTime * 6.0) * 2.0);
    blueRimLight.intensity = currentBlueIntensity * 4.5;

    renderer.render(scene, camera);
  }
  animate();

  window.addEventListener('resize', () => {
    width = container.clientWidth;
    height = container.clientHeight;
    camera.aspect = width / height;
    camera.updateProjectionMatrix();
    renderer.setSize(width, height);
  });
}
/* ==================== 5. KEYBOARD & TERMINAL WEBGL SCENE ==================== */
function initKeyboardTerminalWebGL() {
  const canvas = document.getElementById('keyboard-webgl-canvas');
  if (!canvas || typeof THREE === 'undefined') return;

  const container = canvas.parentElement;
  let width = container.clientWidth;
  let height = container.clientHeight;

  const scene = new THREE.Scene();
  const camera = new THREE.PerspectiveCamera(40, width / height, 0.1, 1000);
  camera.position.set(0, 3.5, 4.5);
  camera.lookAt(0, 0, 0);

  const renderer = new THREE.WebGLRenderer({ canvas, antialias: true, alpha: true });
  renderer.setSize(width, height);

  // 3D Keyboard Base Mesh Group
  const keyboardGroup = new THREE.Group();

  // Base Plate
  const baseGeo = new THREE.BoxGeometry(4, 0.3, 1.8);
  const baseMat = new THREE.MeshStandardMaterial({ color: 0xeeeeee, roughness: 0.3 });
  const baseMesh = new THREE.Mesh(baseGeo, baseMat);
  keyboardGroup.add(baseMesh);

  // Keycaps grid
  const keyGeo = new THREE.BoxGeometry(0.22, 0.15, 0.22);
  const keyMat = new THREE.MeshStandardMaterial({ color: 0xffffff, roughness: 0.2 });

  for (let r = -2; r <= 2; r++) {
    for (let c = -7; c <= 7; c++) {
      const key = new THREE.Mesh(keyGeo, keyMat);
      key.position.set(c * 0.25, 0.2, r * 0.25);
      keyboardGroup.add(key);
    }
  }

  keyboardGroup.rotation.x = 0.45;
  keyboardGroup.rotation.y = -0.25;
  scene.add(keyboardGroup);

  // Lights
  const light1 = new THREE.DirectionalLight(0xffffff, 1.2);
  light1.position.set(3, 5, 4);
  scene.add(light1);

  const ambLight = new THREE.AmbientLight(0xffffff, 0.6);
  scene.add(ambLight);

  function animate() {
    requestAnimationFrame(animate);
    keyboardGroup.rotation.y = -0.25 + Math.sin(Date.now() * 0.001) * 0.05;
    renderer.render(scene, camera);
  }
  animate();

  window.addEventListener('resize', () => {
    width = container.clientWidth;
    height = container.clientHeight;
    camera.aspect = width / height;
    camera.updateProjectionMatrix();
    renderer.setSize(width, height);
  });
}

/* ==================== 6. LIVE TYPEWRITER ENGINE ==================== */
function initLiveTypewriter() {
  const terminalText = document.getElementById('terminal-typed-text');
  if (!terminalText) return;

  const textToType = `Hello, I am Jainil Patel. I am a full stack developer. Building high-performance, immersive frontend architectures, and sovereign digital solutions. Welcome!`;

  let index = 0;
  function typeChar() {
    if (index < textToType.length) {
      terminalText.textContent += textToType.charAt(index);
      index++;
      setTimeout(typeChar, 40 + Math.random() * 30);
    } else {
      setTimeout(() => {
        terminalText.textContent = '';
        index = 0;
        typeChar();
      }, 5000);
    }
  }
  typeChar();
}
