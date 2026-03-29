import glob
import re

polished_css = """
/* LIGHT MODE THEME - POLISHED */
[data-theme='light'] {
  --bg: #fdfdfd; 
  --surface: #ffffff;
  --surface2: #f8fafc;
  --border: #e2e8f0;
  --border2: #cbd5e1;
  --text: #0f172a;
  --text2: #475569;
  --text3: #94a3b8;
  --accent: #16a34a; /* Sharper readable emerald green */
}

/* Base Body Styling */
[data-theme='light'] body {
  background-color: var(--bg);
  /* extremely subtle dot pattern */
  background-image: radial-gradient(rgba(0,0,0,0.06) 1px, transparent 1px);
  background-size: 24px 24px;
}

/* Theme transition */
body.theme-transition, body.theme-transition * {
  transition: background-color 0.4s ease, color 0.4s ease, border-color 0.4s ease, box-shadow 0.4s ease, -webkit-text-stroke 0.4s ease !important;
}

/* Hero Section Refinements */
[data-theme='light'] .hero-bg-text, [data-theme='light'] .hero-bg-word { 
  -webkit-text-stroke: 1px rgba(0,0,0,0.07); 
  color: rgba(0,0,0,0.015); /* very faint fill instead of transparent */
}
[data-theme='light'] .hero-sub .line2 { color: #000; }
[data-theme='light'] .hero-corner span { color: #64748b !important; }
[data-theme='light'] .hero-corner strong { color: #0f172a !important; }

/* Navigation & Cursors */
[data-theme='light'] nav { background: rgba(255,255,255,0.85); border-bottom: 1px solid rgba(0,0,0,0.06); }
[data-theme='light'] .mob-nav { background: rgba(255,255,255,0.98); }
[data-theme='light'] .nav-logo { color: #000; }
[data-theme='light'] .nav-tagline span { color: #64748b; }
[data-theme='light'] .nav-tagline span.green { color: var(--accent); }
[data-theme='light'] .ham span { background: #000; }
[data-theme='light'] #cur { background: #000; }
[data-theme='light'] #cur-ring { border-color: rgba(0,0,0,0.2); }

/* Buttons */
[data-theme='light'] .btn-hire, [data-theme='light'] .btn-primary, [data-theme='light'] .btn-connect { background: #000 !important; color: #fff !important; border:none; }
[data-theme='light'] .btn-hire:hover, [data-theme='light'] .btn-primary:hover, [data-theme='light'] .btn-connect:hover { background: #222 !important; }

/* Bento Cards Global */
[data-theme='light'] .bento-card, 
[data-theme='light'] .proj-card, 
[data-theme='light'] .cert-card, 
[data-theme='light'] .blog-card, 
[data-theme='light'] .timeline-item {
  background: var(--surface);
  border: 1px solid rgba(0,0,0,0.08) !important; /* crisp ultra fine border */
  box-shadow: 0 4px 24px rgba(0,0,0,0.03); /* soft depth */
}
[data-theme='light'] .bento-card:hover, 
[data-theme='light'] .proj-card:hover, 
[data-theme='light'] .cert-card:hover, 
[data-theme='light'] .blog-card:hover {
  border-color: rgba(0,0,0,0.15) !important;
  box-shadow: 0 10px 40px rgba(0,0,0,0.06);
}

/* Card Specifics */
[data-theme='light'] .card-vibe { background: linear-gradient(135deg, #f0fdf4, #ffffff); }
[data-theme='light'] .vibe-quote { color: #000 !important; }
[data-theme='light'] .vibe-attr { color: var(--accent) !important; }
[data-theme='light'] .stat-n { color: #0f172a; }
[data-theme='light'] .proj-mini-item { color: #000; background: #ffffff; border-color: rgba(0,0,0,0.08); box-shadow: 0 2px 8px rgba(0,0,0,0.02); }
[data-theme='light'] .proj-mini-item:hover { background: #f8fafc; border-color: rgba(0,0,0,0.15); }
[data-theme='light'] .c-email a { color: #0f172a !important; text-decoration: none; }
[data-theme='light'] .globe-hint { background: rgba(255,255,255,0.9); color: #000; font-weight: 600; }
[data-theme='light'] .globe-wrap { box-shadow: inset 0 0 20px rgba(0,0,0,0.02), 0 0 30px rgba(22,163,74,0.15); border-color: transparent !important; }
[data-theme='light'] .map-header { background: linear-gradient(to bottom, rgba(255,255,255,0.95), transparent); }
[data-theme='light'] .btn-back-globe { background: rgba(255,255,255,0.9); color: #000; border: 1px solid rgba(0,0,0,0.15); }

/* Other Pages */
[data-theme='light'] .tools-grid span { background: #f8fafc; border: 1px solid rgba(0,0,0,0.08); color: #333; }
[data-theme='light'] .card-header .card-num { color: #000; }
[data-theme='light'] .card-bottom .card-name { color: #0f172a; font-weight: 700; }
[data-theme='light'] .cert-title { color: #0f172a; font-weight: 700;}
[data-theme='light'] .form-group input, [data-theme='light'] .form-group textarea { background: #ffffff; border-color: rgba(0,0,0,0.1); color: #000; }
[data-theme='light'] .form-group input:focus, [data-theme='light'] .form-group textarea:focus { border-color: var(--accent); box-shadow: 0 0 0 2px rgba(22,163,74,0.1); }
"""

html_files = glob.glob('*.html')

for file in html_files:
    try:
        with open(file, 'r', encoding='utf-8') as f:
            content = f.read()

        # Regex out the old LIGHT MODE THEME block gracefully
        content = re.sub(r'/\* LIGHT MODE THEME \*/.*?</style>', polished_css + '\n</style>', content, flags=re.DOTALL)
        
        # In index.html, fix the globe logic specifically
        if file == 'index.html':
            content = content.replace("world.atmosphereColor('lightskyblue');", "world.atmosphereColor('rgba(230, 240, 255, 0.4)');")
            
        with open(file, 'w', encoding='utf-8') as f:
            f.write(content)
            
        print(f"Polished light theme in {file}")
            
    except Exception as e:
        print(f"Error {file}: {e}")
