import os
import re

css_block = """
/* LIGHT MODE THEME */
[data-theme='light'] {
  --bg: #f8fafc;
  --surface: #ffffff;
  --surface2: #f1f5f9;
  --border: #e2e8f0;
  --border2: #cbd5e1;
  --text: #0f172a;
  --text2: #334155;
  --text3: #64748b;
  --accent: #65a30d;
}
/* Transitions for smooth toggle */
body.theme-transition, body.theme-transition * {
  transition: background-color 0.5s ease, color 0.5s ease, border-color 0.5s ease, box-shadow 0.5s ease, -webkit-text-stroke 0.5s ease !important;
}
[data-theme='light'] .hero-bg-text, [data-theme='light'] .hero-bg-word { -webkit-text-stroke: 1px rgba(0,0,0,0.06); }
[data-theme='light'] nav { background: rgba(255,255,255,0.85); border-bottom: 1px solid var(--border); }
[data-theme='light'] .mob-nav { background: rgba(255,255,255,0.98); }
[data-theme='light'] .nav-logo { color: #000; }
[data-theme='light'] .ham span { background: #000; }
[data-theme='light'] #cur { background: #000; }
[data-theme='light'] #cur-ring { border-color: rgba(0,0,0,0.4); }
[data-theme='light'] .btn-hire, [data-theme='light'] .btn-primary, [data-theme='light'] .btn-connect { background: #000 !important; color: #fff !important; }
[data-theme='light'] .card-vibe { background: linear-gradient(135deg, #f0fdf4, #f8fafc); border-color: #e2e8f0; }
[data-theme='light'] .vibe-quote { color: #000 !important; }
[data-theme='light'] .vibe-attr { color: var(--accent) !important; }
[data-theme='light'] .stat-n, [data-theme='light'] .hero-name, [data-theme='light'] .hero-sub .line2 { color: #000; }
[data-theme='light'] .proj-mini-item { color: #000; background: var(--surface2); border-color: var(--border); }
[data-theme='light'] .proj-mini-item:hover { background: #e2e8f0; }
[data-theme='light'] .c-email { color: #000; }
[data-theme='light'] .globe-wrap { box-shadow: inset 0 0 20px rgba(0,0,0,0.05), 0 0 30px rgba(101,163,13,0.2); }
[data-theme='light'] .map-header { background: linear-gradient(to bottom, rgba(255,255,255,0.95), transparent); }
[data-theme='light'] .map-title { color: #000; }
[data-theme='light'] .btn-back-globe { background: rgba(255,255,255,0.8); color: #000; border-color: #cbd5e1; }
/* About Page specific */
[data-theme='light'] .timeline-item:hover { background: #f1f5f9; }
[data-theme='light'] .tools-grid span { background: #f1f5f9; border-color: #cbd5e1; color: #333; }
/* Work Page specific */
[data-theme='light'] .proj-card { border-color: #cbd5e1; }
[data-theme='light'] .proj-card:hover { border-color: var(--accent); }
[data-theme='light'] .card-header .card-num { color: #000; }
[data-theme='light'] .card-bottom .card-name { color: #000; }
[data-theme='light'] .cat-btn.active { background: #000; color: #fff; border-color: #000; }
/* Certifications Page specific */
[data-theme='light'] .cert-card { background: #fff; border-color: #e2e8f0; }
[data-theme='light'] .cert-card:hover { border-color: var(--accent); box-shadow: 0 12px 30px rgba(0,0,0,0.08); }
[data-theme='light'] .cert-title { color: #000; }
[data-theme='light'] .cb-title { color: #000; }
[data-theme='light'] .cb-desc { color: var(--text2); }
[data-theme='light'] .cb-btn-ghost { color: #000; border-color: #cbd5e1; background: #f8fafc; }
[data-theme='light'] .cb-btn-ghost:hover { background: #e2e8f0; }
[data-theme='light'] .cert-image { background:var(--surface2); }
"""

btn_html = """<button id="themeToggle" style="background:none;border:none;cursor:none;font-size:1.1rem;display:inline-flex;align-items:center;justify-content:center;width:34px;height:34px;border-radius:50%;border:1px solid var(--border2);margin-right:1rem;color:var(--text);transition:all 0.2s;">
  <span class="sun-icon" style="display:none;">☀</span>
  <span class="moon-icon">☾</span>
</button>"""

script_block = """
<!-- THEME LOGIC -->
<script>
(function(){
  const btn = document.getElementById('themeToggle');
  if(!btn) return;
  const sun = btn.querySelector('.sun-icon');
  const moon = btn.querySelector('.moon-icon');
  
  function applyTheme(th) {
    document.documentElement.setAttribute('data-theme', th);
    if(th === 'light') {
      sun.style.display = 'inline';
      moon.style.display = 'none';
      if(window.world) {
        window.world.globeImageUrl('//unpkg.com/three-globe/example/img/earth-blue-marble.jpg');
        window.world.atmosphereColor('lightskyblue');
      }
    } else {
      sun.style.display = 'none';
      moon.style.display = 'inline';
      if(window.world) {
        window.world.globeImageUrl('earth-night.jpg');
        window.world.atmosphereColor('rgba(50, 100, 255, 0.5)');
      }
    }
  }

  let currentTheme = localStorage.getItem('theme') || 'dark';
  applyTheme(currentTheme);
  
  btn.addEventListener('click', () => {
    document.body.classList.add('theme-transition');
    currentTheme = currentTheme === 'dark' ? 'light' : 'dark';
    localStorage.setItem('theme', currentTheme);
    applyTheme(currentTheme);
    setTimeout(() => document.body.classList.remove('theme-transition'), 500);
  });
})();
</script>
"""

files = ['index.html', 'about.html', 'work.html', 'certifications.html']

for file in files:
    try:
        with open(file, 'r', encoding='utf-8') as f:
            content = f.read()

        # 1. Inject CSS
        if '/* LIGHT MODE THEME */' not in content:
            content = content.replace('</style>', css_block + '\n</style>')

        # 2. Inject Button
        if 'id="themeToggle"' not in content:
            # Find the btn-hire link
            content = re.sub(r'(<a href="contact\.html" class="btn-hire"[^>]*>.*?</a>)', btn_html + r'\n    \1', content)

        # 3. Inject JS Logic
        if '<!-- THEME LOGIC -->' not in content:
            content = content.replace('</body>', script_block + '\n</body>')
            
        # 4. Expose window.world in index.html exclusively
        if file == 'index.html' and 'window.world = world;' not in content:
            content = content.replace('const world = Globe()', 'const world = Globe()')
            content = content.replace('world.controls().autoRotate', 'window.world = world;\n  world.controls().autoRotate', 1)

        with open(file, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"Processed {file}")
    except Exception as e:
        print(f"Failed {file}: {e}")

