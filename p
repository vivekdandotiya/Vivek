<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Work & Architecture — Vivek Dandotiya</title>
  <meta name="description" content="Explore featured web design projects, full-stack applications, and interactive 3D digital architecture built by Vivek Dandotiya.">
  <meta property="og:title" content="Work & Architecture — Vivek Dandotiya">
  <meta property="og:description" content="Selected high-performance projects and architectural blueprints by web designer & developer Vivek Dandotiya.">
  <meta property="og:type" content="website">
  <link rel="icon" type="image/png" href="fevicon.png">

  <!-- Preconnect Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display:ital@0;1&family=Inter:wght@300;400;500;600;700;800;900&family=Space+Grotesk:wght@400;500;600;700;800&display=swap" rel="stylesheet">

  <!-- Award-Level Architectural Blueprint Stylesheet -->
  <link rel="stylesheet" href="css/work.css">
</head>
<body>

  <!-- Top Scroll Progress Bar -->
  <div id="scroll-progress" aria-hidden="true"></div>

  <!-- Minimal Preloader / Page Enter (< 1.2s) -->
  <div id="preloader" aria-hidden="true">
    <svg class="preloader-crosshair tl" viewBox="0 0 24 24"><path d="M0 12h24M12 0v24"/></svg>
    <svg class="preloader-crosshair tr" viewBox="0 0 24 24"><path d="M0 12h24M12 0v24"/></svg>
    <svg class="preloader-crosshair bl" viewBox="0 0 24 24"><path d="M0 12h24M12 0v24"/></svg>
    <svg class="preloader-crosshair br" viewBox="0 0 24 24"><path d="M0 12h24M12 0v24"/></svg>
    <div class="preloader-content">
      <div class="preloader-logo"><span class="preloader-logo-inner">VD</span></div>
      <div class="preloader-line-track"><div class="preloader-line-fill"></div></div>
      <span class="preloader-meta">INITIALIZING BLUEPRINT ENGINE // 60FPS</span>
    </div>
  </div>

  <!-- Smooth Page Exit Veil -->
  <div id="page-exit-veil" aria-hidden="true"></div>

  <!-- Architectural Background Drafting Grid & Grain Overlay -->
  <div class="bp-background-grid" aria-hidden="true"></div>
  <div class="bp-noise-overlay" aria-hidden="true"></div>

  <!-- High-Precision Drafting Cursor -->
  <div id="cur-dot" aria-hidden="true"></div>
  <div id="cur-ring" aria-hidden="true" data-cursor-label=""></div>

  <!-- ── 1. NAVBAR (GLASSMORPHIC & SMART AUTO-HIDE) ── -->
  <nav class="bp-navbar" role="navigation" aria-label="Main Navigation">
    <a href="index.html" class="nav-brand" aria-label="Vivek Dandotiya Home">
      <div class="nav-logo-box">VD</div>
      <div class="nav-tagline">
        <span>Web Designer</span>
        <span class="accent-label">Building The Future</span>
      </div>
    </a>

    <div class="nav-center-menu">
      <a href="index.html" class="nav-link-item">Home</a>
      <a href="about.html" class="nav-link-item">About</a>
      <a href="work.html" class="nav-link-item active" aria-current="page">Work</a>
      <a href="casestudies.html" class="nav-link-item">Case Studies</a>
      <a href="certifications.html" class="nav-link-item">Certs</a>
      <a href="blog.html" class="nav-link-item">Blog</a>
    </div>

    <div class="nav-right-actions">
      <button id="themeToggle" class="theme-toggle-btn" aria-label="Toggle Dark / Light Theme" title="Toggle Theme">
        <span class="sun-icon" style="display:none;">☀</span>
        <span class="moon-icon">☾</span>
      </button>
      <a href="contact.html" class="btn-book-call">
        <span>Book a Call</span>
        <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><path d="M7 17L17 7M17 7H7M17 7V17"/></svg>
      </a>
      <button class="hamburger-btn" id="ham" aria-label="Toggle Mobile Menu" aria-expanded="false">
        <span></span><span></span><span></span>
      </button>
    </div>
  </nav>

  <!-- Mobile Fullscreen Navigation Overlay -->
  <div class="mobile-nav-overlay" id="mob" aria-hidden="true">
    <a href="index.html" class="mobile-nav-link">Home</a>
    <a href="about.html" class="mobile-nav-link">About</a>
    <a href="work.html" class="mobile-nav-link active">Work</a>
    <a href="casestudies.html" class="mobile-nav-link">Case Studies</a>
    <a href="certifications.html" class="mobile-nav-link">Certifications</a>
    <a href="blog.html" class="mobile-nav-link">Blog</a>
    <a href="contact.html" class="mobile-nav-link">Contact</a>
  </div>

  <main id="main-content">
    <!-- ── 2. HERO SECTION ("CRAFTING DIGITAL ARCHITECTURES.") ── -->
    <section class="sec-blueprint-hero" id="hero-blueprint" aria-label="Featured Blueprint Hero">
      <!-- Panning & Parallax Background Image -->
      <div class="bp-hero-bg-wrapper">
        <img src="expand.jpg" alt="Architectural Blueprint Wireframe Grid" class="bp-hero-bg-img" id="bpHeroBgImg" loading="eager" width="1920" height="1080" />
        <div class="bp-hero-overlay"></div>
      </div>

      <!-- Animated Technical SVG Drafting Lines Behind Headline -->
      <svg class="bp-hero-svg-drafting" viewBox="0 0 1440 800" fill="none" xmlns="http://www.w3.org/2000/svg" aria-hidden="true">
        <line x1="120" y1="180" x2="1320" y2="180" class="bp-draft-line" />
        <line x1="120" y1="620" x2="1320" y2="620" class="bp-draft-line" />
        <line x1="240" y1="80" x2="240" y2="720" class="bp-draft-line" />
        <line x1="1200" y1="80" x2="1200" y2="720" class="bp-draft-line" />
        <circle cx="240" cy="180" r="4" fill="var(--accent)" opacity="0.6" />
        <circle cx="1200" cy="180" r="4" fill="var(--accent)" opacity="0.6" />
        <circle cx="240" cy="620" r="4" fill="var(--accent)" opacity="0.6" />
        <circle cx="1200" cy="620" r="4" fill="var(--accent)" opacity="0.6" />
      </svg>

      <div class="bp-hero-container">
        <!-- Eyebrow Badge -->
        <div class="bp-eyebrow-wrapper">
          <span class="bp-hero-badge">
            <span class="bp-badge-dot"></span>
            FEATURED WORKSPACE &bull; ARCHITECTURAL BLUEPRINT
          </span>
        </div>

        <!-- Main Title with Mask Slide-Up -->
        <h1 class="bp-hero-title">
          <span class="word-mask"><span class="word-inner">CRAFTING</span></span>
          <span class="word-mask"><span class="word-inner">DIGITAL</span></span><br>
          <span class="word-mask"><span class="word-inner bp-gradient-shimmer">ARCHITECTURES.</span></span>
        </h1>

        <!-- Subtitle -->
        <p class="bp-hero-subtitle">
          An immersive showcase of full-stack engineering, interactive 3D WebGL interfaces, and high-performance frontend designs built by <em>Vivek Dandotiya</em>.
        </p>

        <!-- Quick Stats Bar with Tabular Numbers & Counter -->
        <div class="bp-hero-stats">
          <div class="bp-stat-card">
            <span class="bp-stat-num tabular" data-target="100%">100%</span>
            <span class="bp-stat-lbl">Custom Code Architecture</span>
          </div>
          <div class="bp-stat-card">
            <span class="bp-stat-num tabular" data-target="60FPS">60FPS</span>
            <span class="bp-stat-lbl">WebGL Canvas Performance</span>
          </div>
          <div class="bp-stat-card">
            <span class="bp-stat-num tabular" data-target="0.2s">0.2s</span>
            <span class="bp-stat-lbl">Ultra-Fast Load Response</span>
          </div>
        </div>

        <!-- Action CTA Buttons -->
        <div class="bp-hero-actions">
          <a href="#projects-stage" class="bp-btn-primary">
            <span>Explore Work Projects</span>
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><path d="M7 17L17 7M17 7H7M17 7V17"/></svg>
          </a>
          <a href="contact.html" class="bp-btn-secondary">
            <span>Book a Project Call</span>
          </a>
        </div>
      </div>

      <!-- Corner Drafting Badges -->
      <div class="bp-corner bl">📍 Location <strong>MADHYA PRADESH, INDIA</strong></div>
      <div class="bp-corner br">⚡ Role <strong>WEB DESIGNER & DEVELOPER</strong></div>

      <!-- Scroll Down Indicator -->
      <div class="bp-scroll-indicator">
        <div class="bp-mouse-icon">
          <div class="bp-wheel"></div>
        </div>
        <span>SCROLL TO DIVE IN</span>
      </div>
    </section>

    <!-- ── 3. INTERACTIVE BENTO DECK SHOWCASE ── -->
    <section class="sec-projects-showcase" id="projects-stage" aria-label="Interactive Projects Showcase Stage">
      <div class="showcase-header">
        <p class="eyebrow">// 02. ARCHITECTURAL SHOWCASE & REGISTRY</p>
        <h2>Featured <em>Digital</em> Architectures</h2>
        <svg class="showcase-header-underline" viewBox="0 0 160 6" fill="none">
          <path d="M0 3 L160 3" stroke="currentColor"/>
        </svg>
        <p class="sub">Curated showcase of high-performance web applications, 3D WebGL interfaces, and production design systems. Click any card to expand its technical blueprint.</p>
      </div>

      <!-- Controls Toolbar: Filter Chips + Real-time Search Console -->
      <div class="showcase-toolbar">
        <div class="showcase-search-bar">
          <span class="search-sparkle">✦</span>
          <input type="text" id="showcaseSearchInput" placeholder="Filter by title, stack, or keyword (e.g. React, Three.js, Crypto)..." aria-label="Search architectural database">
          <button class="search-clear-btn" id="searchClearBtn" title="Clear Search">✕</button>
        </div>

        <div class="showcase-filter-tags" role="toolbar" aria-label="Project Category Filters">
          <button class="filter-tag-btn active" data-tag="all">
            <span>ALL</span>
            <span class="filter-count">12</span>
          </button>
          <button class="filter-tag-btn" data-tag="web">
            <span>WEB DEV</span>
            <span class="filter-count">7</span>
          </button>
          <button class="filter-tag-btn" data-tag="design">
            <span>UI/UX DESIGN</span>
            <span class="filter-count">3</span>
          </button>
          <button class="filter-tag-btn" data-tag="chat">
            <span>REAL-TIME CHAT</span>
            <span class="filter-count">2</span>
          </button>
        </div>
      </div>

      <!-- Interactive Bento Cards Grid (Populated dynamically via js/work.js) -->
      <div class="showcase-cards-grid" id="showcaseCardsGrid">
        <!-- Rendered by js/work.js with 3D perspective tilt & cursor spotlight -->
      </div>
    </section>
  </main>

  <!-- ── 4. PROJECT DETAIL BLUEPRINT PANEL (MODAL) ── -->
  <div id="modal-overlay" role="dialog" aria-modal="true" aria-hidden="true" aria-labelledby="mTitle">
    <div class="modal-card">
      <div class="bp-modal-header">
        <span class="bp-header-meta" id="mHeaderMeta">PROJECT BLUEPRINT // SYSTEM CONFIG</span>
        <button class="bp-close-btn" id="modalClose" aria-label="Close Blueprint Modal">BACK TO REGISTRY [✕]</button>
      </div>
      
      <div class="modal-grid-layout">
        <!-- Left Panel: Specs & Tech Stack -->
        <div class="bp-side-panel">
          <div>
            <div class="bp-section-label">PROJECT SPECIFICATION</div>
            <h2 class="bp-title" id="mTitle">Realtime Chat App</h2>
            <div class="bp-subtitle" id="mSubtitle">One-to-one messaging platform</div>
          </div>
          
          <div>
            <div class="bp-section-label">PROJECT OVERVIEW</div>
            <p class="bp-overview" id="mOverview">A real-time chat application...</p>
          </div>
          
          <div class="bp-specs-grid">
            <div class="bp-spec-item">
              <span class="bp-spec-lbl">DURATION</span>
              <span class="bp-spec-val" id="mDuration">May 2024</span>
            </div>
            <div class="bp-spec-item">
              <span class="bp-spec-lbl">ROLE</span>
              <span class="bp-spec-val" id="mRole">Developer</span>
            </div>
            <div class="bp-spec-item">
              <span class="bp-spec-lbl">STATUS</span>
              <span class="bp-spec-val" id="mStatus">Live</span>
            </div>
          </div>
          
          <div>
            <div class="bp-section-label">TECH STACK</div>
            <div class="bp-tech-grid" id="mTechGrid"></div>
          </div>
        </div>
        
        <!-- Middle Panel: Blueprint Stage with Device Rulers -->
        <div class="bp-canvas-panel">
          <!-- Device Resolution Controls -->
          <div class="bp-viewport-controls">
            <div class="bp-section-label" style="margin-bottom:0;">VIEWPORT SIMULATION</div>
            <div class="bp-resolution-switcher">
              <button class="bp-res-btn active" data-res="1200">1200px [Desktop]</button>
              <button class="bp-res-btn" data-res="800">800px [Tablet]</button>
              <button class="bp-res-btn" data-res="375">375px [Mobile]</button>
            </div>
          </div>

          <div class="bp-viewport-stage">
            <div class="bp-viewport-outer">
              <div class="bp-corner-marker tl">+</div>
              <div class="bp-corner-marker tr">+</div>
              <div class="bp-corner-marker bl">+</div>
              <div class="bp-corner-marker br">+</div>
              <div class="bp-coord-h">1200px [DESKTOP]</div>
              <div class="bp-coord-v">800px</div>
              
              <div id="bpViewport"></div>
            </div>
          </div>
          
          <!-- Viewport Tab Switcher -->
          <div class="bp-tab-row">
            <button class="bp-tab-btn active" id="btnTabSys">[01] SYSTEM LAYOUT</button>
            <button class="bp-tab-btn" id="btnTabDb">[02] DATABASE SCHEMA</button>
            <button class="bp-tab-btn" id="btnTabImg">[03] REAL WORLD PREVIEW</button>
          </div>
        </div>
        
        <!-- Right Panel: Key Features, Links & Metrics -->
        <div class="bp-side-panel">
          <div>
            <div class="bp-section-label">KEY FEATURES</div>
            <div class="bp-features-list" id="mFeaturesList"></div>
          </div>
          
          <div>
            <div class="bp-section-label">PROJECT LINKS</div>
            <div style="display:flex; flex-direction:column; gap:0.6rem;">
              <a href="#" target="_blank" rel="noopener noreferrer" class="bp-link-btn bp-link-btn-primary" id="mLink">LIVE PRODUCTION DEMO ↗</a>
              <a href="#" target="_blank" rel="noopener noreferrer" class="bp-link-btn bp-link-btn-secondary" id="mGhLink">GITHUB REPOSITORY ⌥</a>
            </div>
          </div>
          
          <div>
            <div class="bp-section-label">PROJECT AUDIT METRICS</div>
            <div class="bp-metrics-panel">
              <div class="bp-metric-row">
                <div class="bp-metric-meta">
                  <span class="bp-metric-label">Performance</span>
                  <span class="bp-metric-value tabular" id="mPerfVal">98%</span>
                </div>
                <div class="bp-metric-bar-outer"><div class="bp-metric-bar-inner" id="mPerfBar"></div></div>
              </div>
              <div class="bp-metric-row">
                <div class="bp-metric-meta">
                  <span class="bp-metric-label">Code Quality</span>
                  <span class="bp-metric-value tabular" id="mQualityVal">A+</span>
                </div>
                <div class="bp-metric-bar-outer"><div class="bp-metric-bar-inner" id="mQualityBar"></div></div>
              </div>
              <div class="bp-metric-row">
                <div class="bp-metric-meta">
                  <span class="bp-metric-label">Best Practices</span>
                  <span class="bp-metric-value tabular" id="mBestVal">100%</span>
                </div>
                <div class="bp-metric-bar-outer"><div class="bp-metric-bar-inner" id="mBestBar"></div></div>
              </div>
              <div class="bp-metric-row">
                <div class="bp-metric-meta">
                  <span class="bp-metric-label">Accessibility</span>
                  <span class="bp-metric-value tabular" id="mAccessVal">98%</span>
                </div>
                <div class="bp-metric-bar-outer"><div class="bp-metric-bar-inner" id="mAccessBar"></div></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- ── 5. FOOTER WITH MARQUEE & CLOSING CTA ── -->
  <footer class="footer-section" id="contact">
    <!-- Infinite Architectural Marquee -->
    <div class="footer-marquee-wrap" aria-hidden="true">
      <div class="footer-marquee-track">
        <div class="footer-marquee-item">LET'S BUILD SOMETHING <em>UNMISSABLE</em> <span class="footer-marquee-sparkle">✦</span> ARCHITECTING THE FUTURE <span class="footer-marquee-sparkle">✦</span> 60FPS EXPERIENCES <span class="footer-marquee-sparkle">✦</span></div>
        <div class="footer-marquee-item">LET'S BUILD SOMETHING <em>UNMISSABLE</em> <span class="footer-marquee-sparkle">✦</span> ARCHITECTING THE FUTURE <span class="footer-marquee-sparkle">✦</span> 60FPS EXPERIENCES <span class="footer-marquee-sparkle">✦</span></div>
      </div>
    </div>

    <div class="footer-main-content">
      <div class="footer-cta-box">
        <div class="flame-mascot">
          <svg viewBox="0 0 24 24">
            <path d="M12 2C10.5 5 8 7 8 10C8 12.5 10 14.5 12 17.5C14 14.5 16 12.5 16 10C16 7 13.5 5 12 2Z"></path>
          </svg>
        </div>
        <h2 class="flame-heading">Say Hi!<br>Ready to build something <em>extraordinary</em>?</h2>
        <a href="contact.html" class="btn-chat-cta">LET'S CHAT ↗</a>
      </div>

      <div class="footer-links-grid">
        <div class="footer-nav-col">
          <div class="footer-nav-title">NAVIGATION DIRECTORY</div>
          <ul class="footer-nav-list">
            <li><a href="index.html">Home</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="work.html">Work</a></li>
            <li><a href="casestudies.html">Case Studies</a></li>
            <li><a href="certifications.html">Certifications</a></li>
            <li><a href="blog.html">Blog</a></li>
            <li><a href="contact.html">Contact</a></li>
          </ul>
        </div>

        <div class="footer-nav-col" style="align-items: flex-end;">
          <ul class="footer-social-list">
            <li><a href="https://twitter.com" target="_blank" rel="noopener noreferrer" class="social-pill" aria-label="Twitter">TW</a></li>
            <li><a href="https://instagram.com" target="_blank" rel="noopener noreferrer" class="social-pill" aria-label="Instagram">IG</a></li>
            <li><a href="https://github.com/vivek0052" target="_blank" rel="noopener noreferrer" class="social-pill" aria-label="GitHub">GH</a></li>
            <li><a href="https://youtube.com" target="_blank" rel="noopener noreferrer" class="social-pill" aria-label="YouTube">YT</a></li>
          </ul>
          <div style="margin-top: 1rem; font-family: 'Space Grotesk', monospace, sans-serif; font-size: 0.75rem; color: var(--text-dim);">
            &copy; 2026 Vivek Dandotiya — Web Designer & Developer
          </div>
        </div>
      </div>

      <div class="footer-watermark">VIVEK DANDOTIYA</div>
    </div>
  </footer>

  <!-- ── 6. SCRIPTS (PINNED CDN VERSIONS + WORK.JS) ── -->
  <!-- Lenis Smooth Scroll -->
  <script src="https://unpkg.com/lenis@1.1.18/dist/lenis.min.js"></script>
  <!-- GSAP Core & ScrollTrigger -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/gsap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.5/ScrollTrigger.min.js"></script>

  <!-- Work Page Motion Engine -->
  <script src="js/work.js"></script>
</body>
</html>
