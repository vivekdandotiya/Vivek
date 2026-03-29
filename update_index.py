import sys

with open('index.html', 'r', encoding='utf-8') as f:
    text = f.read()

# Replace CSS
old_css = """/* ANALOG CLOCK */
.clock-wrap{
  margin-bottom:1.5rem;
  display:flex;align-items:center;justify-content:flex-start;
}
#clockCanvas{
  border-radius:50%;
  display:block;
}"""

new_css = """/* 3D GLOBE OVERLAY */
.globe-wrap{
  margin-bottom:1.5rem;
  display:flex;align-items:center;justify-content:flex-start;
  width:220px;height:220px;
  border-radius:50%;
  overflow:hidden;
  position:relative;
  cursor:pointer;
  box-shadow:inset 0 0 20px rgba(0,0,0,0.8), 0 0 30px rgba(184,255,87,0.1);
  transition:box-shadow .3s;
}
.globe-wrap:hover{
  box-shadow:inset 0 0 20px rgba(0,0,0,0.8), 0 0 40px rgba(184,255,87,0.3);
}
#globeViz{width:100%;height:100%;}
.globe-hint{
  position:absolute;bottom:10px;left:50%;transform:translateX(-50%);
  font-size:0.55rem;letter-spacing:0.1em;text-transform:uppercase;color:var(--text2);
  pointer-events:none;background:rgba(10,10,10,0.6);padding:0.2rem 0.5rem;border-radius:999px;
  backdrop-filter:blur(4px);
}

/* MAP OVERLAY (FULLSCREEN) */
#mapOverlay{
  position:fixed;inset:0;z-index:9000;
  background:var(--bg);
  display:flex;flex-direction:column;
  opacity:0;pointer-events:none;
  transition:opacity 0.8s ease;
}
#mapOverlay.active{
  opacity:1;pointer-events:all;
}
.map-header{
  position:absolute;top:0;left:0;right:0;z-index:9001;
  padding:1.5rem 2.5rem;display:flex;justify-content:space-between;align-items:center;
  background:linear-gradient(to bottom, rgba(10,10,10,0.9), transparent);
}
.map-title{font-family:'Space Grotesk',sans-serif;font-size:1.5rem;font-weight:700;}
.map-title em{font-family:'DM Serif Display',serif;font-weight:400;font-style:italic;color:var(--accent);}
.btn-back-globe{
  display:inline-flex;align-items:center;gap:0.5rem;
  background:rgba(10,10,10,0.8);border:1px solid var(--border2);
  color:#fff;padding:0.6rem 1.4rem;border-radius:999px;font-size:0.75rem;font-weight:600;
  transition:all 0.2s;cursor:none;backdrop-filter:blur(10px);
}
.btn-back-globe:hover{border-color:var(--accent);color:var(--accent);}
#mapIframe{width:100%;height:100%;border:none;}"""

old_html = """      <!-- REAL-TIME ANALOG CLOCK -->
      <div class="clock-wrap">
        <canvas id="clockCanvas" width="220" height="220"></canvas>
      </div>"""

new_html = """      <!-- 3D GLOBE -->
      <div class="globe-wrap" id="globeWrap" title="Click to view local map">
        <div id="globeViz"></div>
        <div class="globe-hint">Click to Explore</div>
      </div>"""

old_scripts = """<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>
// Cursor"""

new_scripts = """<!-- MAP OVERLAY -->
<div id="mapOverlay">
  <div class="map-header">
    <div class="map-title">Local <em>Area</em></div>
    <button class="btn-back-globe" id="btnBackGlobe">← Back to Orbit</button>
  </div>
  <iframe id="mapIframe" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>

<script src="https://unpkg.com/three"></script>
<script src="https://unpkg.com/globe.gl"></script>

<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>
// Cursor"""

old_clock_js = """// ── ANALOG CLOCK (like Parth's — real-time, 24h style) ──
(function(){
  const canvas=document.getElementById('clockCanvas');
  if(!canvas)return;
  const ctx=canvas.getContext('2d');
  const S=220,R=S/2;

  function draw(){
    const now=new Date();
    const h=now.getHours()%12, m=now.getMinutes(), s=now.getSeconds(), ms=now.getMilliseconds();
    ctx.clearRect(0,0,S,S);
    ctx.save(); ctx.translate(R,R);

    // Outer bezel
    const bg=ctx.createRadialGradient(0,0,R*.7,0,0,R);
    bg.addColorStop(0,'#181818'); bg.addColorStop(1,'#0d0d0d');
    ctx.beginPath(); ctx.arc(0,0,R-1,0,Math.PI*2);
    ctx.fillStyle=bg; ctx.fill();
    ctx.strokeStyle='#2a2a2a'; ctx.lineWidth=1.5; ctx.stroke();

    // Outer ring
    ctx.beginPath(); ctx.arc(0,0,R*.92,0,Math.PI*2);
    ctx.strokeStyle='#1a1a1a'; ctx.lineWidth=14; ctx.stroke();

    // Tick marks
    for(let i=0;i<60;i++){
      const a=(i/60)*Math.PI*2-Math.PI/2;
      const isH=i%5===0;
      ctx.beginPath();
      ctx.moveTo(Math.cos(a)*(isH?R*.79:R*.86), Math.sin(a)*(isH?R*.79:R*.86));
      ctx.lineTo(Math.cos(a)*R*.91, Math.sin(a)*R*.91);
      ctx.strokeStyle=isH?'#ccc':'#3a3a3a';
      ctx.lineWidth=isH?2:1; ctx.stroke();
    }

    // 24h numbers
    ctx.font='600 7.5px Inter,sans-serif';
    ctx.textAlign='center'; ctx.textBaseline='middle'; ctx.fillStyle='#666';
    ['24','02','04','06','08','10','12','14','16','18','20','22'].forEach((lbl,i)=>{
      const a=(i/12)*Math.PI*2-Math.PI/2;
      ctx.fillText(lbl, Math.cos(a)*R*.70, Math.sin(a)*R*.70);
    });

    // Face
    ctx.beginPath(); ctx.arc(0,0,R*.75,0,Math.PI*2);
    const face=ctx.createRadialGradient(-5,-5,0,0,0,R*.75);
    face.addColorStop(0,'#1c1c1c'); face.addColorStop(1,'#0a0a0a');
    ctx.fillStyle=face; ctx.fill();
    ctx.strokeStyle='#222'; ctx.lineWidth=1; ctx.stroke();

    // Hour hand
    const hA=((h+m/60+s/3600)/12)*Math.PI*2-Math.PI/2;
    ctx.save(); ctx.rotate(hA);
    ctx.beginPath(); ctx.moveTo(0,R*.13); ctx.lineTo(0,-R*.40);
    ctx.strokeStyle='#fff'; ctx.lineWidth=5; ctx.lineCap='round'; ctx.stroke();
    ctx.restore();

    // Minute hand + arrow
    const mA=((m+s/60)/60)*Math.PI*2-Math.PI/2;
    ctx.save(); ctx.rotate(mA);
    ctx.beginPath(); ctx.moveTo(0,R*.15); ctx.lineTo(0,-R*.57);
    ctx.strokeStyle='#fff'; ctx.lineWidth=3.5; ctx.lineCap='round'; ctx.stroke();
    ctx.beginPath(); ctx.moveTo(-3.5,-R*.50); ctx.lineTo(0,-R*.59); ctx.lineTo(3.5,-R*.50);
    ctx.strokeStyle='#fff'; ctx.lineWidth=2; ctx.stroke();
    ctx.restore();

    // Second hand
    const sA=((s+ms/1000)/60)*Math.PI*2-Math.PI/2;
    ctx.save(); ctx.rotate(sA);
    ctx.beginPath(); ctx.moveTo(0,R*.18); ctx.lineTo(0,-R*.62);
    ctx.strokeStyle='#c0c0c0'; ctx.lineWidth=1; ctx.lineCap='round'; ctx.stroke();
    ctx.restore();

    // Center dot
    ctx.beginPath(); ctx.arc(0,0,5,0,Math.PI*2); ctx.fillStyle='#fff'; ctx.fill();
    ctx.beginPath(); ctx.arc(0,0,2,0,Math.PI*2); ctx.fillStyle='#555'; ctx.fill();

    ctx.restore();
    requestAnimationFrame(draw);
  }
  draw();
})();"""

new_globe_js = """// ── 3D GLOBE & MAP TRANSITION ──
(function(){
  const globeViz = document.getElementById('globeViz');
  const globeWrap = document.getElementById('globeWrap');
  if(!globeViz) return;
  
  const width = 220, height = 220;
  const MADHYA_PRADESH = { lat: 23.2599, lng: 77.4126 };
  
  // Initialize Globe
  const world = Globe()
    (globeViz)
    .width(width)
    .height(height)
    .globeImageUrl('//unpkg.com/three-globe/example/img/earth-blue-marble.jpg')
    .bumpImageUrl('//unpkg.com/three-globe/example/img/earth-topology.png')
    .backgroundColor('rgba(0,0,0,0)') // Transparent to blend with box-shadow
    .showAtmosphere(true)
    .atmosphereColor('lightskyblue')
    .atmosphereAltitude(0.15);
    
  // Add Madhya Pradesh Marker (Red Dot)
  world.htmlElementsData([
    { lat: MADHYA_PRADESH.lat, lng: MADHYA_PRADESH.lng, color: 'red' }
  ])
  .htmlElement(d => {
    const el = document.createElement('div');
    el.style.width = '8px';
    el.style.height = '8px';
    el.style.background = 'var(--red)';
    el.style.borderRadius = '50%';
    el.style.boxShadow = '0 0 10px var(--red)';
    el.style.cursor = 'pointer';
    return el;
  });

  // Setup initial camera
  world.pointOfView({ lat: 20, lng: 80, altitude: 2.5 });
  
  // Auto-rotate Earth
  world.controls().autoRotate = true;
  world.controls().autoRotateSpeed = 1.0;
  world.controls().enableZoom = false; // Disable so it doesn't mess with page scroll
  
  // Click Handler for zooming and map transition
  const mapOverlay = document.getElementById('mapOverlay');
  const mapIframe = document.getElementById('mapIframe');
  const btnBackGlobe = document.getElementById('btnBackGlobe');
  
  // Google Maps Embed URL for Madhya Pradesh Location (satellite view)
  const mapUrl = 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14664.120614487438!2d77.4126!3d23.2599!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e1!3m2!1sen!2sin!4v1700000000000!5m2!1sen!2sin';
  
  let isZooming = false;
  globeWrap.addEventListener('click', () => {
    if(isZooming) return;
    isZooming = true;
    
    // Stop rotation when flying in
    world.controls().autoRotate = false;
    
    // Fly in to extremely low orbit
    world.pointOfView({ lat: MADHYA_PRADESH.lat, lng: MADHYA_PRADESH.lng, altitude: 0.01 }, 1500);
    
    // After animation, fade in the map overlay
    setTimeout(() => {
      // Load iframe only when needed to save bandwidth
      if(!mapIframe.src) mapIframe.src = mapUrl;
      mapOverlay.classList.add('active');
    }, 1400); // slightly before fly-in finishes for smooth crossfade
  });
  
  // Back to Orbit Handler
  btnBackGlobe.addEventListener('click', () => {
    mapOverlay.classList.remove('active');
    // Wait for fade out, then fly camera back
    setTimeout(() => {
      world.pointOfView({ lat: 20, lng: 80, altitude: 2.5 }, 1500);
      world.controls().autoRotate = true;
      isZooming = false;
    }, 600);
  });
  
})();"""

c = 0
if old_css in text:
    text = text.replace(old_css, new_css)
    c+=1
else: print("CSS fail")

if old_html in text:
    text = text.replace(old_html, new_html)
    c+=1
else: print("HTML fail")

if old_scripts in text:
    text = text.replace(old_scripts, new_scripts)
    c+=1
else: print("Scripts fail")

if old_clock_js in text:
    text = text.replace(old_clock_js, new_globe_js)
    c+=1
else: print("Clock JS fail")

if c>0:
    with open('index.html', 'w', encoding='utf-8') as f:
        f.write(text)
    print(f"Replaced {c} chunks.")
