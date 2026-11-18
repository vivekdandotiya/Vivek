/**
 * WORK.JS — UNIFIED PORTFOLIO MOTION & SHOWCASE ENGINE
 * Designed for Vivek Dandotiya (https://vivek0052.in)
 * Cohesive with index.html, about.html, and certifications.html
 */

(function () {
  'use strict';

  const prefersReducedMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;
  const isTouchDevice = ('ontouchstart' in window) || (navigator.maxTouchPoints > 0);

  // ── 1. PROJECTS REGISTRY (12 PROJECTS + 4 LIVE VIDEO LOOPS) ──
  const projects = [
    {
      num: '01',
      icon: '🌐',
      name: 'Portfolio Website',
      sub: 'Personal Brand & Interactive Architecture',
      desc: 'A hand-crafted personal portfolio built with pure HTML, CSS, and buttery GSAP motion curves. Features smooth Lenis scrolling, dynamic theme synchronizers, and responsive 3D WebGL visualizations.',
      tags: ['HTML5', 'CSS3', 'GSAP', 'Lenis', 'Responsive'],
      link: 'https://vivek0052.in/',
      gh: 'https://github.com/vivek0052',
      img: 'images/portfolio_mockup.png',
      video: 'v1_loop.mp4',
      featured: true,
      category: 'web',
      categoryLabel: 'WEB DEV',
      duration: 'Feb 2025 - Mar 2025',
      role: 'Lead Frontend Dev',
      status: 'Live & Active',
      overview: 'A hand-crafted, high-performance personal portfolio built to highlight frontend design engineering capabilities. Engineered from the ground up with modular architecture and zero layout shifts.',
      features: [
        'Responsive Precision Grid Layout',
        'Synchronized Dark/Light Theme Switcher',
        'Interactive 3D WebGL Earth Visualizer',
        '60FPS Scroll-Triggered Micro-Interactions'
      ],
      metrics: { perf: 99, quality: 'A+', qualityBar: 98, best: 100, access: 98 },
      dbName: 'LocalStorage (Theme & State Cache)'
    },
    {
      num: '02',
      icon: '💼',
      name: 'Freelancing Portfolio',
      sub: 'Clients Showcase & Service Platform',
      desc: 'Full-stack client portfolio for engineering services. Showcases client case studies, structured service offerings, and high-conversion consultation booking workflows.',
      tags: ['Fullstack', 'React', 'Vercel', 'Tailwind'],
      link: 'https://freelance-portfolio-client-delta.vercel.app/',
      gh: 'https://github.com/vivek0052',
      img: 'images/proj2.png',
      featured: false,
      category: 'web',
      categoryLabel: 'WEB DEV',
      duration: 'Jan 2025 - Feb 2025',
      role: 'Full Stack Dev',
      status: 'Live & Active',
      overview: 'A modular client portfolio built for showcasing freelance engineering services. Enables frictionless navigation and high conversion rates for inbound technical leads.',
      features: [
        'Dynamic Client-Side Routing Architecture',
        'Bento-Style Telemetry Dashboard Layout',
        'Structured Services Listing Matrix',
        'Automated Inbound Lead Intake Handlers'
      ],
      metrics: { perf: 96, quality: 'A', qualityBar: 92, best: 95, access: 98 },
      dbName: 'Supabase SQL Database'
    },
    {
      num: '03',
      icon: '📈',
      name: 'Live Crypto Tracker',
      sub: 'Real-time Price & Watchlist Monitor',
      desc: 'Real-time cryptocurrency price tracking with live WebSocket feeds, responsive historical trend sparklines, coin volatility matrices, and persistent user watchlists.',
      tags: ['API', 'Real-time', 'Chart.js', 'Fintech'],
      link: 'https://live-crypto-update.vercel.app/',
      gh: 'https://github.com/vivek0052',
      img: 'images/proj3.png',
      featured: false,
      category: 'web',
      categoryLabel: 'WEB DEV',
      duration: 'Nov 2024 - Dec 2024',
      role: 'Frontend Engineer',
      status: 'Live & Active',
      overview: 'A real-time cryptocurrency telemetry tracking application. Connects to coin exchange APIs to stream live prices and render responsive historical charts.',
      features: [
        'Real-time Exchange REST API Polling',
        'Interactive Price Trend Charts & Sparklines',
        'Filterable Coins Search & Volatility Matrix',
        'Custom Watchlist LocalStorage Persistence'
      ],
      metrics: { perf: 94, quality: 'A+', qualityBar: 96, best: 98, access: 95 },
      dbName: 'LocalStorage (Watchlists Cache)'
    },
    {
      num: '04',
      icon: '🎬',
      name: 'Movie Booking App',
      sub: 'Ticket Booking & Seat Reservation',
      desc: 'Interactive cinematic ticket booking platform. Browse shows, select hall seats in real-time with state locks, manage session buffers, and complete simulated checkout passes.',
      tags: ['JavaScript', 'UI/UX', 'State Machine'],
      link: 'https://ticket-booking-green.vercel.app/',
      gh: 'https://github.com/vivek0052',
      img: 'images/proj4.png',
      featured: false,
      category: 'web',
      categoryLabel: 'WEB DEV',
      duration: 'Oct 2024 - Nov 2024',
      role: 'UI/UX Developer',
      status: 'Completed',
      overview: 'An interactive seat reservation platform for cinematic halls. Manages live booking transactions and grid state locks dynamically with instant visual feedback.',
      features: [
        'Interactive Seating Grid Map with State Locks',
        'Real-time Selected Seat Buffer & Timers',
        'Dynamic Pricing Calculation Engine',
        'Ticket Pass Export & Receipt Card'
      ],
      metrics: { perf: 92, quality: 'B+', qualityBar: 88, best: 90, access: 94 },
      dbName: 'Firebase Realtime DB'
    },
    {
      num: '05',
      icon: '⚡',
      name: 'Real-Time Dashboard',
      sub: 'Live Telemetry & Metrics Monitor',
      desc: 'High-density telemetry analytics dashboard built with TypeScript. Live metrics widgets, clean bento grid layout, system health alarms, and real-time streaming data feeds.',
      tags: ['TypeScript', 'Dashboard', 'DataViz'],
      link: 'https://real-time-dashboard-three.vercel.app/',
      gh: 'https://github.com/vivek0052',
      img: 'images/analytics_mockup.png',
      video: 'new.mp4',
      featured: false,
      category: 'web',
      categoryLabel: 'WEB DEV',
      duration: 'Aug 2024 - Sep 2024',
      role: 'Dashboard Engineer',
      status: 'Completed',
      overview: 'A dashboard built with TypeScript for visualizing live metrics, resource telemetry tracking, and grid analytics with minimal CPU overhead.',
      features: [
        'Modular Telemetry Widget Cards',
        'Real-time Chart.js Graphing Data Stream',
        'System Metric Progress Bars & Alarms',
        'Active Columns Sorting & Quick Search'
      ],
      metrics: { perf: 98, quality: 'A+', qualityBar: 98, best: 100, access: 98 },
      dbName: 'PostgreSQL Server Instance'
    },
    {
      num: '06',
      icon: '🍔',
      name: 'Food Delivery Site',
      sub: 'Next.js E-Commerce Storefront',
      desc: 'Production-ready e-commerce food ordering storefront designed with Next.js Server Components. Implements interactive shopping cart, variant modifiers, and checkout flow.',
      tags: ['Next.js', 'TypeScript', 'E-commerce'],
      link: 'https://fast-food-website-two.vercel.app/',
      gh: 'https://github.com/vivek0052',
      img: 'images/proj6.png',
      featured: false,
      category: 'web',
      categoryLabel: 'WEB DEV',
      duration: 'Jul 2024 - Aug 2024',
      role: 'Full Stack Engineer',
      status: 'Completed',
      overview: 'A production-ready e-commerce food storefront designed with Next.js Server Components. Implements shopping carts, variant modifiers, and checkout flows.',
      features: [
        'Dynamic Shopping Cart State Handler',
        'Stripe Checkout API Simulation Integration',
        'Product Categories Tab Filtering',
        'Next.js Image CDN Edge Optimization'
      ],
      metrics: { perf: 95, quality: 'A', qualityBar: 93, best: 96, access: 97 },
      dbName: 'MongoDB Cluster (Catalog Database)'
    },
    {
      num: '07',
      icon: '✅',
      name: 'Live Task Manager',
      sub: 'Productivity & Sprint Planner',
      desc: 'Responsive productivity task planner and workflow organizer. Features real-time state persistence, category tagging, drag-and-drop priority sorting, and offline readiness.',
      tags: ['JavaScript', 'Productivity', 'PWA'],
      link: 'https://taskmaster-liart.vercel.app/',
      gh: 'https://github.com/vivek0052',
      img: 'images/proj7.png',
      featured: false,
      category: 'web',
      categoryLabel: 'WEB DEV',
      duration: 'Jun 2024 - Jul 2024',
      role: 'JavaScript Developer',
      status: 'Completed',
      overview: 'A responsive productivity task planner designed for efficient daily sprint planning. Saves tasks and states locally with instant offline readiness.',
      features: [
        'Dynamic Category Tag Filtering',
        'Drag-and-Drop Task Priority Sorting',
        'Productivity Metrics Progression Tracker',
        'Responsive Mobile-Ready Cards Grid'
      ],
      metrics: { perf: 97, quality: 'A', qualityBar: 92, best: 98, access: 96 },
      dbName: 'LocalStorage (Tasks File)'
    },
    {
      num: '08',
      icon: '🎨',
      name: 'Figma Bakery Prototype',
      sub: 'Cake & Pastry High-Fidelity Design',
      desc: 'High-fidelity Figma UI prototype mapping bakery shop user journeys. Developed with custom typography tokens, components, interactive modal sidebars, and click-through overlays.',
      tags: ['Figma', 'UI Design', 'Design System'],
      link: 'https://www.figma.com/proto/CchptbZVg3D7iTaxUZXcbl/',
      gh: 'https://github.com/vivek0052',
      img: 'images/proj8.png',
      video: 'v2_loop.mp4',
      featured: false,
      category: 'design',
      categoryLabel: 'UI/UX DESIGN',
      duration: 'May 2024 - Jun 2024',
      role: 'UI/UX Designer',
      status: 'Completed',
      overview: 'A high-fidelity Figma design prototype mapping cake shop user journeys. Developed with custom typography tokens, components, and interactive overlays.',
      features: [
        'Pixel-Perfect Landing Artboard Architecture',
        'Interactive Modal & Drawer Sidebars',
        'Refined Typography & Color Design Tokens',
        'Click-to-Navigate Prototype Link Overlays'
      ],
      metrics: { perf: 100, quality: 'A+', qualityBar: 100, best: 100, access: 99 },
      dbName: 'Figma Variables Library'
    },
    {
      num: '09',
      icon: '🖥️',
      name: 'Framer Portfolio',
      sub: 'Interactive Framer Motion Showcase',
      desc: 'A sleek portfolio site designed completely in Framer. Highlights scroll-based triggers, dynamic fluid breakpoints, parallax image scrolling, and clean editorial typography.',
      tags: ['Framer', 'Motion', 'No-Code'],
      link: 'https://vkdportfolio.framer.website/',
      gh: 'https://github.com/vivek0052',
      img: 'images/proj9.png',
      featured: false,
      category: 'design',
      categoryLabel: 'UI/UX DESIGN',
      duration: 'Apr 2024 - May 2024',
      role: 'Framer Developer',
      status: 'Completed',
      overview: 'A highly animated portfolio site designed completely in Framer. Highlights scroll-based triggers, dynamic fluid responsiveness, and interactive components.',
      features: [
        'Dynamic Scroll-Triggered Motion Curves',
        'Fluid Viewport Adaptive Layouts',
        'Structured Framer CMS Integration',
        'Parallax Images Scrolling Overlay'
      ],
      metrics: { perf: 93, quality: 'A', qualityBar: 91, best: 94, access: 96 },
      dbName: 'Framer CMS Database'
    },
    {
      num: '10',
      icon: '💬',
      name: 'Varta',
      sub: 'Real-time WebSocket Chat Application',
      desc: 'Production-ready real-time chatting platform with bidirectional WebSocket rooms, active typing telemetry broadcaster, online presence indicators, and dark glassmorphic styling.',
      tags: ['JavaScript', 'WebSockets', 'Firebase', 'Socket.io'],
      link: 'https://github.com/vivek0052/varta',
      gh: 'https://github.com/vivek0052/varta',
      img: 'images/varta_mockup.png',
      video: 'varta.mp4',
      featured: true,
      category: 'chat',
      categoryLabel: 'REAL-TIME CHAT',
      duration: 'May 2024 - Jul 2024',
      role: 'Full Stack Dev',
      status: 'Live & Active',
      overview: 'A production chatting platform mimicking modern secure messengers. Uses socket systems to bridge messages immediately with zero database poll lag.',
      features: [
        'Real-time WebSocket Bidirectional Messaging',
        'Active Online Status Indicators',
        'Typing Telemetry Broadcaster',
        'Dark Glassmorphic UI Dashboard'
      ],
      metrics: { perf: 95, quality: 'A', qualityBar: 94, best: 96, access: 95 },
      dbName: 'MongoDB Replica Set'
    },
    {
      num: '11',
      icon: '📐',
      name: 'Skills Dome Visualizer',
      sub: 'Cinematic Skills Dome Interface',
      desc: 'Interactive conveyor belt semicircle dome visualizing technical and soft competencies. Animated conveyor belt orbits built with colorful SVG brand paths and adaptive node sizing.',
      tags: ['SVG', 'Animation', 'UI Design'],
      link: 'about.html',
      gh: 'https://github.com/vivek0052',
      img: 'images/skills_mockup.png',
      featured: false,
      category: 'design',
      categoryLabel: 'UI/UX DESIGN',
      duration: 'Jun 2024 - Jul 2024',
      role: 'UX Engineer',
      status: 'Completed',
      overview: 'An interactive conveyor belt semicircle dome layout displaying technical competencies and soft skills with colorful customized SVG brand paths.',
      features: [
        'Semicircle Conveyor Layout Wrapping',
        'Smooth Auto-Rotation Loop',
        'Adaptive Orbit Node Sizing',
        'Distance-to-Edge Opacity Fades'
      ],
      metrics: { perf: 99, quality: 'A+', qualityBar: 98, best: 99, access: 98 },
      dbName: 'LocalStorage Config Cache'
    },
    {
      num: '12',
      icon: '🌍',
      name: '3D WebGL Globe Explorer',
      sub: 'Holographic 3D Globe Visualizer',
      desc: 'WebGL-powered interactive 3D globe visualization in a bento card layout. Displays geographic connection nodes, resource coordinates, and smooth rotational orbit physics.',
      tags: ['Three.js', 'WebGL', 'DataViz'],
      link: 'index.html',
      gh: 'https://github.com/vivek0052',
      img: 'images/globe_mockup.png',
      featured: false,
      category: 'web',
      categoryLabel: 'WEB DEV',
      duration: 'Jul 2024 - Aug 2024',
      role: 'WebGL Developer',
      status: 'Completed',
      overview: 'A custom WebGL 3D globe explorer showcasing geographic connection nodes, resource coordinates, and smooth rotational orbit physics.',
      features: [
        'Interactive WebGL Globe Mesh',
        'Holographic Atmosphere Glow Shaders',
        'Dynamic Coordinate Nodes Mapping',
        'Damped Mouse Parallax Tracking'
      ],
      metrics: { perf: 95, quality: 'A', qualityBar: 94, best: 96, access: 95 },
      dbName: 'Three.js Camera Telemetry'
    }
  ];

  const N = projects.length;
  const mod = (n, m) => ((n % m) + m) % m;

  // ── 2. LENIS SMOOTH SCROLL ──
  let lenis = null;
  function initLenis() {
    if (prefersReducedMotion || typeof Lenis === 'undefined') return;
    lenis = new Lenis({
      duration: 1.15,
      easing: (t) => Math.min(1, 1.001 - Math.pow(2, -10 * t)),
      smoothWheel: true,
      touchMultiplier: 1.25,
      infinite: false
    });

    if (window.ScrollTrigger) {
      lenis.on('scroll', ScrollTrigger.update);
      gsap.ticker.add((time) => { lenis.raf(time * 1000); });
      gsap.ticker.lagSmoothing(0);
    } else {
      function raf(time) { lenis.raf(time); requestAnimationFrame(raf); }
      requestAnimationFrame(raf);
    }
  }

  // ── 3. CURSOR & NAVIGATION ENGINE ──
  function initCursor() {
    if (isTouchDevice || prefersReducedMotion) return;
    const cur = document.getElementById('cur');
    const ring = document.getElementById('cur-ring');
    if (!cur || !ring) return;

    let mouseX = -100, mouseY = -100;
    let ringX = -100, ringY = -100;

    window.addEventListener('mousemove', (e) => {
      mouseX = e.clientX;
      mouseY = e.clientY;
      cur.style.left = `${mouseX}px`;
      cur.style.top = `${mouseY}px`;
    });

    function loop() {
      ringX += (mouseX - ringX) * 0.16;
      ringY += (mouseY - ringY) * 0.16;
      ring.style.left = `${ringX.toFixed(2)}px`;
      ring.style.top = `${ringY.toFixed(2)}px`;
      requestAnimationFrame(loop);
    }
    requestAnimationFrame(loop);
  }

  function initNavbar() {
    const nav = document.querySelector('nav');
    const themeBtn = document.getElementById('themeToggle');
    const ham = document.getElementById('ham');
    const mob = document.getElementById('mob');
    const scrollBar = document.getElementById('scroll-progress');

    window.addEventListener('scroll', () => {
      const currentY = window.pageYOffset || 0;
      if (scrollBar) {
        const totalDocHeight = document.documentElement.scrollHeight - window.innerHeight;
        const progress = totalDocHeight > 0 ? (currentY / totalDocHeight) * 100 : 0;
        scrollBar.style.width = `${progress}%`;
      }
      if (currentY > 20) {
        nav.style.background = 'rgba(5, 5, 5, 0.9)';
      } else {
        nav.style.background = 'rgba(5, 5, 5, 0.75)';
      }
    }, { passive: true });

    if (ham && mob) {
      ham.addEventListener('click', () => {
        const isOpen = ham.classList.toggle('active');
        mob.classList.toggle('open', isOpen);
      });
      mob.querySelectorAll('a').forEach(a => {
        a.addEventListener('click', () => {
          ham.classList.remove('active');
          mob.classList.remove('open');
        });
      });
    }

    if (themeBtn) {
      themeBtn.addEventListener('click', toggleTheme);
    }
  }

  function applyTheme(th) {
    document.documentElement.setAttribute('data-theme', th);
    localStorage.setItem('theme', th);
    const sun = document.querySelector('.sun-icon');
    const moon = document.querySelector('.moon-icon');
    if (sun && moon) {
      if (th === 'light') {
        sun.style.display = 'inline';
        moon.style.display = 'none';
      } else {
        sun.style.display = 'none';
        moon.style.display = 'inline';
      }
    }
  }

  function toggleTheme() {
    document.body.classList.add('theme-transition');
    const curTheme = document.documentElement.getAttribute('data-theme') || 'dark';
    const nextTheme = curTheme === 'dark' ? 'light' : 'dark';
    applyTheme(nextTheme);
    setTimeout(() => document.body.classList.remove('theme-transition'), 400);
  }

  // ── 4. SHOWCASE CARDS RENDERING & INTERACTION ──
  let cardsContainer = null;
  let listContainer = null;
  let searchInput = null;
  let activeCategory = 'all';
  let currentViewMode = localStorage.getItem('work_view_mode') || 'grid';

  function initShowcase() {
    cardsContainer = document.getElementById('showcaseCardsGrid');
    listContainer = document.getElementById('showcaseEditorialList');
    searchInput = document.getElementById('showcaseSearchInput');

    renderCards(projects);
    renderList(projects);
    setupFilters();
    setupSearch();
    setupViewSwitcher();
    setupFloatingPreview();
  }

  function renderCards(list) {
    if (!cardsContainer) return;
    cardsContainer.innerHTML = '';

    list.forEach((p, idx) => {
      const card = document.createElement('article');
      card.className = `proj-card${p.featured ? ' featured' : ''}`;
      card.dataset.cat = p.category;
      card.dataset.hasVideo = p.video ? 'true' : 'false';
      card.dataset.name = p.name.toLowerCase();
      card.dataset.desc = p.desc.toLowerCase();
      card.dataset.index = idx;
      card.setAttribute('role', 'button');
      card.setAttribute('tabindex', '0');
      card.setAttribute('aria-label', `View Blueprint for ${p.name}`);

      // Media stage: video loop or image mockup
      let mediaMarkup = '';
      if (p.video) {
        mediaMarkup = `
          <div class="proj-media-wrap">
            <video class="proj-video" src="${p.video}" poster="${p.img}" autoplay muted loop playsinline preload="metadata" loading="lazy"></video>
            <div class="proj-media-badges">
              <span class="proj-num-pill">[${p.num}]</span>
              <span class="proj-video-pill"><span class="pulse-dot"></span>● LIVE VIDEO</span>
            </div>
            <button class="proj-video-toggle" title="Pause / Play Video" onclick="event.stopPropagation(); window.toggleVideo(this);">❚❚</button>
          </div>
        `;
      } else {
        mediaMarkup = `
          <div class="proj-media-wrap">
            <img src="${p.img}" alt="${p.name} preview" class="proj-img" loading="lazy" />
            <div class="proj-media-badges">
              <span class="proj-num-pill">[${p.num}]</span>
              <span class="proj-cat-pill">${p.categoryLabel || p.category.toUpperCase()}</span>
            </div>
          </div>
        `;
      }

      card.innerHTML = `
        ${mediaMarkup}
        <div class="proj-details">
          <div class="proj-title-line">
            <h3 class="proj-title">${p.name}</h3>
          </div>
          <div class="proj-sub">${p.sub}</div>
          <p class="proj-desc">${p.desc}</p>
          
          <div class="proj-tags">
            ${p.tags.map(t => `<span class="proj-tag">${t}</span>`).join('')}
          </div>

          <div class="proj-footer">
            <div class="proj-metric">
              <span class="pulse-dot"></span>
              <span>AUDIT:</span>
              <strong>${p.metrics.perf}% PERF</strong>
            </div>
            <div class="proj-actions">
              <button class="btn-bp" onclick="event.stopPropagation(); window.openModal(${idx});">Blueprint ⚙</button>
              <a href="${p.link}" target="_blank" rel="noopener noreferrer" class="btn-demo" onclick="event.stopPropagation();">Demo ↗</a>
            </div>
          </div>
        </div>
      `;

      card.addEventListener('click', () => openModal(idx));
      card.addEventListener('keydown', (e) => {
        if (e.key === 'Enter' || e.key === ' ') {
          e.preventDefault();
          openModal(idx);
        }
      });

      // 3D Perspective Tilt on Mousemove
      if (!isTouchDevice && !prefersReducedMotion) {
        card.addEventListener('mousemove', (e) => {
          const rect = card.getBoundingClientRect();
          const x = e.clientX - rect.left;
          const y = e.clientY - rect.top;
          const centerX = rect.width / 2;
          const centerY = rect.height / 2;
          const rotX = ((y - centerY) / centerY) * -5.5;
          const rotY = ((x - centerX) / centerX) * 5.5;
          card.style.transform = `perspective(1000px) rotateX(${rotX.toFixed(2)}deg) rotateY(${rotY.toFixed(2)}deg) translateY(-5px)`;
        });

        card.addEventListener('mouseleave', () => {
          card.style.transform = '';
        });
      }

      cardsContainer.appendChild(card);
    });

    updateProjectCount();
  }

  window.toggleVideo = function (btn) {
    const wrap = btn.closest('.proj-media-wrap');
    if (!wrap) return;
    const video = wrap.querySelector('video');
    if (!video) return;
    if (video.paused) {
      video.play();
      btn.textContent = '❚❚';
    } else {
      video.pause();
      btn.textContent = '▶';
    }
  };

  // ── 5. EDITORIAL LIST VIEW RENDERING ──
  function renderList(list) {
    if (!listContainer) return;
    listContainer.innerHTML = '';

    const listHtml = `
      <div class="editorial-head">
        <span>#</span>
        <span>PROJECT ARCHITECTURE</span>
        <span>CATEGORY</span>
        <span>TECH STACK</span>
        <span>AUDIT / STATUS</span>
        <span>ACTIONS</span>
      </div>
      <div class="editorial-body">
        ${list.map((p, idx) => `
          <div class="editorial-item" data-index="${idx}" data-cat="${p.category}" data-has-video="${p.video ? 'true' : 'false'}" data-name="${p.name.toLowerCase()}" data-desc="${p.desc.toLowerCase()}">
            <span class="col-num">${p.num}</span>
            <div>
              <div class="col-title">${p.name} ${p.video ? '<span class="proj-video-pill" style="margin-left:0.4rem;font-size:0.55rem;">● VIDEO</span>' : ''}</div>
              <div class="col-sub">${p.sub}</div>
            </div>
            <div>
              <span class="proj-cat-pill">${p.categoryLabel}</span>
            </div>
            <div style="display:flex;gap:0.3rem;flex-wrap:wrap;">
              ${p.tags.slice(0, 3).map(t => `<span class="proj-tag" style="padding:0.15rem 0.5rem;font-size:0.58rem;">${t}</span>`).join('')}
            </div>
            <div style="display:flex;align-items:center;gap:0.4rem;font-size:0.75rem;">
              <span class="pulse-dot"></span>
              <strong style="color:var(--accent);font-family:Space Grotesk,monospace;">${p.metrics.perf}%</strong>
              <span style="color:var(--text3);font-size:0.65rem;">${p.status}</span>
            </div>
            <div style="display:flex;gap:0.4rem;">
              <button class="btn-bp" onclick="event.stopPropagation(); window.openModal(${idx});">Blueprint</button>
              <a href="${p.link}" target="_blank" rel="noopener noreferrer" class="btn-demo" style="padding:0.3rem 0.6rem;" onclick="event.stopPropagation();">↗</a>
            </div>
          </div>
        `).join('')}
      </div>
    `;

    listContainer.innerHTML = listHtml;

    listContainer.querySelectorAll('.editorial-item').forEach(item => {
      const idx = parseInt(item.dataset.index, 10);
      item.addEventListener('click', () => openModal(idx));
    });
  }

  function setupFloatingPreview() {
    const previewEl = document.getElementById('floatingCursorPreview');
    const mediaEl = document.getElementById('floatingPreviewMedia');
    if (!previewEl || !mediaEl || isTouchDevice || prefersReducedMotion) return;

    let targetX = -500, targetY = -500;
    let currentX = -500, currentY = -500;
    let isVisible = false;

    window.addEventListener('mousemove', (e) => {
      targetX = e.clientX + 24;
      targetY = e.clientY - 90;
    });

    function loop() {
      if (isVisible) {
        currentX += (targetX - currentX) * 0.16;
        currentY += (targetY - currentY) * 0.16;
        previewEl.style.transform = `translate3d(${currentX.toFixed(2)}px, ${currentY.toFixed(2)}px, 0)`;
      }
      requestAnimationFrame(loop);
    }
    requestAnimationFrame(loop);

    const items = document.querySelectorAll('.editorial-item');
    items.forEach(item => {
      item.addEventListener('mouseenter', () => {
        const idx = parseInt(item.dataset.index, 10);
        const p = projects[idx];
        if (!p) return;

        if (p.video) {
          mediaEl.innerHTML = `<video src="${p.video}" poster="${p.img}" autoplay muted loop playsinline></video>`;
        } else {
          mediaEl.innerHTML = `<img src="${p.img}" alt="${p.name}" />`;
        }
        previewEl.classList.add('visible');
        isVisible = true;
      });

      item.addEventListener('mouseleave', () => {
        previewEl.classList.remove('visible');
        isVisible = false;
        setTimeout(() => { if (!isVisible) mediaEl.innerHTML = ''; }, 300);
      });
    });
  }

  // ── 6. FILTERS & SEARCH ──
  function setupFilters() {
    const filterBtns = document.querySelectorAll('.filter-btn');
    filterBtns.forEach(btn => {
      btn.addEventListener('click', () => {
        filterBtns.forEach(b => b.classList.remove('active'));
        btn.classList.add('active');
        activeCategory = btn.dataset.tag;
        applyFilter();
      });
    });
  }

  function setupSearch() {
    if (!searchInput) return;
    searchInput.addEventListener('input', applyFilter);

    const clearBtn = document.getElementById('searchClearBtn');
    if (clearBtn) {
      clearBtn.addEventListener('click', () => {
        searchInput.value = '';
        applyFilter();
      });
    }
  }

  function applyFilter() {
    const query = (searchInput ? searchInput.value : '').toLowerCase().trim();
    const cards = document.querySelectorAll('.proj-card');
    const items = document.querySelectorAll('.editorial-item');
    let count = 0;

    cards.forEach(card => {
      const cat = card.dataset.cat;
      const hasVideo = card.dataset.hasVideo === 'true';
      const name = card.dataset.name;
      const desc = card.dataset.desc;

      let matchCat = (activeCategory === 'all');
      if (activeCategory === 'video') matchCat = hasVideo;
      else if (activeCategory === cat) matchCat = true;

      const matchQuery = (!query || name.includes(query) || desc.includes(query));

      if (matchCat && matchQuery) {
        card.style.display = '';
        count++;
      } else {
        card.style.display = 'none';
      }
    });

    items.forEach(item => {
      const cat = item.dataset.cat;
      const hasVideo = item.dataset.hasVideo === 'true';
      const name = item.dataset.name;
      const desc = item.dataset.desc;

      let matchCat = (activeCategory === 'all');
      if (activeCategory === 'video') matchCat = hasVideo;
      else if (activeCategory === cat) matchCat = true;

      const matchQuery = (!query || name.includes(query) || desc.includes(query));

      if (matchCat && matchQuery) {
        item.style.display = '';
      } else {
        item.style.display = 'none';
      }
    });

    updateProjectCount(count);
  }

  function updateProjectCount(c) {
    const countEl = document.getElementById('projectCount');
    if (!countEl) return;
    const finalCount = (c !== undefined) ? c : projects.length;
    countEl.textContent = `Showing ${finalCount} Architectures`;
  }

  // ── 7. VIEW SWITCHER (GRID VS. LIST) ──
  function setupViewSwitcher() {
    const btnGrid = document.getElementById('viewBtnGrid');
    const btnList = document.getElementById('viewBtnList');
    if (!btnGrid || !btnList || !cardsContainer || !listContainer) return;

    function setView(mode) {
      currentViewMode = mode;
      localStorage.setItem('work_view_mode', mode);
      if (mode === 'grid') {
        btnGrid.classList.add('active');
        btnList.classList.remove('active');
        cardsContainer.style.display = 'grid';
        listContainer.style.display = 'none';
      } else {
        btnList.classList.add('active');
        btnGrid.classList.remove('active');
        cardsContainer.style.display = 'none';
        listContainer.style.display = 'block';
      }
    }

    btnGrid.addEventListener('click', () => setView('grid'));
    btnList.addEventListener('click', () => setView('list'));

    setView(currentViewMode);
  }

  // ── 8. MODAL BLUEPRINT CONTROLLER ──
  const modalOverlay = document.getElementById('modal-overlay');
  let currentModalIdx = 0;
  let activeTab = 'layout';

  window.openModal = function (idx) {
    currentModalIdx = mod(idx, N);
    activeTab = 'layout';
    fillModalData(currentModalIdx);

    if (modalOverlay) {
      modalOverlay.classList.add('open');
      modalOverlay.setAttribute('aria-hidden', 'false');
      if (lenis) lenis.stop();
    }
  };

  function closeModal() {
    if (!modalOverlay) return;
    modalOverlay.classList.remove('open');
    modalOverlay.setAttribute('aria-hidden', 'true');
    if (lenis) lenis.start();
  }

  function fillModalData(idx) {
    const p = projects[idx];
    if (!p) return;

    document.getElementById('mHeaderMeta').textContent = `BLUEPRINT // REGISTRY SPEC // [${p.num}]`;
    document.getElementById('mTitle').textContent = p.name;
    document.getElementById('mSubtitle').textContent = p.sub;
    document.getElementById('mOverview').textContent = p.overview;
    document.getElementById('mDuration').textContent = p.duration;
    document.getElementById('mRole').textContent = p.role;
    document.getElementById('mStatus').textContent = p.status;

    document.getElementById('mTechGrid').innerHTML = p.tags.map(t => `<span class="bp-tech-pill">${t}</span>`).join('');
    document.getElementById('mFeaturesList').innerHTML = p.features.map(f => `
      <div class="bp-feature-item">
        <span class="bp-feature-icon">✓</span>
        <span>${f}</span>
      </div>
    `).join('');

    document.getElementById('mLink').href = p.link;
    document.getElementById('mGhLink').href = p.gh;

    document.getElementById('mPerfVal').textContent = p.metrics.perf + '%';
    document.getElementById('mQualityVal').textContent = p.metrics.quality;
    document.getElementById('mBestVal').textContent = p.metrics.best + '%';
    document.getElementById('mAccessVal').textContent = p.metrics.access + '%';

    document.getElementById('mPerfBar').style.width = p.metrics.perf + '%';
    document.getElementById('mQualityBar').style.width = p.metrics.qualityBar + '%';
    document.getElementById('mBestBar').style.width = p.metrics.best + '%';
    document.getElementById('mAccessBar').style.width = p.metrics.access + '%';

    switchTab(activeTab);
  }

  function switchTab(t) {
    activeTab = t;
    const btnSys = document.getElementById('btnTabSys');
    const btnDb = document.getElementById('btnTabDb');
    const btnImg = document.getElementById('btnTabImg');

    if (btnSys) btnSys.classList.toggle('active', t === 'layout');
    if (btnDb) btnDb.classList.toggle('active', t === 'db');
    if (btnImg) btnImg.classList.toggle('active', t === 'img');

    const viewport = document.getElementById('bpViewport');
    const p = projects[currentModalIdx];
    if (!viewport || !p) return;

    if (t === 'layout') {
      viewport.innerHTML = generateLayoutSVG(p);
    } else if (t === 'db') {
      viewport.innerHTML = generateDBSVG(p);
    } else if (t === 'img') {
      if (p.video) {
        viewport.innerHTML = `<video src="${p.video}" poster="${p.img}" controls autoplay loop playsinline class="bp-video-preview"></video>`;
      } else {
        viewport.innerHTML = `<img src="${p.img}" class="bp-image-preview" alt="${p.name} Real World Preview" />`;
      }
    }
  }

  function generateLayoutSVG(p) {
    return `
      <svg viewBox="0 0 800 480" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" style="background:#000;">
        <g fill="none" stroke="rgba(184, 255, 87, 0.4)" stroke-width="1.2">
          <rect x="60" y="30" width="680" height="420" rx="8" stroke="rgba(184, 255, 87, 0.8)" stroke-width="2" />
          <line x1="60" y1="70" x2="740" y2="70" stroke="rgba(184, 255, 87, 0.5)" />
          <circle cx="85" cy="50" r="4" fill="rgba(184, 255, 87, 0.6)" />
          <circle cx="100" cy="50" r="4" fill="rgba(184, 255, 87, 0.6)" />
          <circle cx="115" cy="50" r="4" fill="rgba(184, 255, 87, 0.6)" />
          <rect x="230" y="90" width="480" height="120" rx="6" fill="rgba(184, 255, 87, 0.05)" />
          <rect x="230" y="230" width="230" height="190" rx="6" fill="rgba(184, 255, 87, 0.05)" />
          <rect x="480" y="230" width="230" height="190" rx="6" fill="rgba(184, 255, 87, 0.05)" />
          <text x="250" y="150" fill="var(--accent)" font-family="Space Grotesk, sans-serif" font-size="14" font-weight="bold">${p.name.toUpperCase()} // SYSTEM WIREFRAME</text>
        </g>
      </svg>
    `;
  }

  function generateDBSVG(p) {
    const db = p.dbName || 'POSTGRESQL INSTANCE';
    return `
      <svg viewBox="0 0 800 480" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" style="background:#000;">
        <g fill="none" stroke="rgba(184, 255, 87, 0.4)" stroke-width="1.2">
          <rect x="50" y="30" width="700" height="40" rx="6" fill="rgba(184, 255, 87, 0.08)" />
          <text x="70" y="55" fill="var(--accent)" font-family="monospace" font-size="12" font-weight="bold">${db.toUpperCase()} // ENTITY RELATIONSHIP</text>
          <rect x="50" y="100" width="180" height="220" rx="6" stroke="rgba(184, 255, 87, 0.6)" />
          <rect x="310" y="100" width="180" height="220" rx="6" stroke="rgba(184, 255, 87, 0.6)" />
          <rect x="570" y="100" width="180" height="220" rx="6" stroke="rgba(184, 255, 87, 0.6)" />
        </g>
      </svg>
    `;
  }

  function setupModalHandlers() {
    const closeBtn = document.getElementById('modalClose');
    if (closeBtn) closeBtn.addEventListener('click', closeModal);

    if (modalOverlay) {
      modalOverlay.addEventListener('click', (e) => {
        if (e.target === modalOverlay) closeModal();
      });
    }

    document.getElementById('btnTabSys').addEventListener('click', () => switchTab('layout'));
    document.getElementById('btnTabDb').addEventListener('click', () => switchTab('db'));
    document.getElementById('btnTabImg').addEventListener('click', () => switchTab('img'));

    document.querySelectorAll('.bp-res-btn').forEach(btn => {
      btn.addEventListener('click', () => {
        document.querySelectorAll('.bp-res-btn').forEach(b => b.classList.remove('active'));
        btn.classList.add('active');
        const r = btn.dataset.res;
        const outer = document.querySelector('.bp-viewport-outer');
        const coord = document.querySelector('.bp-coord-h');
        if (outer) outer.style.maxWidth = r + 'px';
        if (coord) coord.textContent = r + 'px [' + (r === '1200' ? 'DESKTOP' : (r === '800' ? 'TABLET' : 'MOBILE')) + ']';
      });
    });

    document.addEventListener('keydown', (e) => {
      if (!modalOverlay || !modalOverlay.classList.contains('open')) return;
      if (e.key === 'Escape') closeModal();
      if (e.key === 'ArrowLeft') {
        currentModalIdx = mod(currentModalIdx - 1, N);
        fillModalData(currentModalIdx);
      }
      if (e.key === 'ArrowRight') {
        currentModalIdx = mod(currentModalIdx + 1, N);
        fillModalData(currentModalIdx);
      }
    });
  }

  // ── 9. INITIALIZATION ──
  function init() {
    const savedTheme = localStorage.getItem('theme') || 'dark';
    applyTheme(savedTheme);

    initLenis();
    initCursor();
    initNavbar();
    initShowcase();
    setupModalHandlers();
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();
