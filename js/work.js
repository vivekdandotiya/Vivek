/**
 * WORK.JS — RED & BLACK ARCHITECTURAL BLUEPRINT MOTION ENGINE
 * Built with GSAP, ScrollTrigger, Lenis Smooth Scroll, and 3D Interactive Bento Showcase
 * Vivek Dandotiya Portfolio (https://vivek0052.in)
 */

(function () {
  'use strict';

  // ── 1. GLOBAL STATE & PROJECT DATA ──
  const prefersReducedMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;
  const isTouchDevice = ('ontouchstart' in window) || (navigator.maxTouchPoints > 0);

  // Projects Registry (12 Production Projects)
  // TODO: USER DATA HOOK — To add more projects in the future, append items to this registry array.
  const projects = [
    {
      num: '01',
      icon: '🌐',
      name: 'Portfolio Website',
      desc: "A hand-crafted personal portfolio built with pure HTML & CSS. Clean architectural layout, buttery motion, and responsive performance.",
      tags: ['HTML5', 'CSS3', 'GSAP', 'Responsive'],
      link: 'https://vivek0052.in/',
      gh: 'https://github.com/vivek0052',
      img: 'images/portfolio_mockup.png',
      sub: 'Personal Brand & Interactive Portfolio',
      overview: "A hand-crafted, high-performance personal portfolio built to highlight frontend design engineering capabilities. Engineered from the ground up with modular architecture and zero layout shifts.",
      duration: 'Feb 2025 - Mar 2025',
      role: 'Lead Frontend Dev',
      status: 'Live & Active',
      features: [
        'Responsive Precision Grid Layout',
        'Synchronized Dark/Light Theme Switcher with View Transitions',
        'Interactive 3D WebGL & CSS Perspective Visualizations',
        'SEO-Optimized Metadata & Semantics'
      ],
      metrics: { perf: 99, quality: 'A+', qualityBar: 98, best: 100, access: 98 },
      dbName: 'LocalStorage (Theme & State Cache)',
      category: 'web',
      categoryLabel: 'WEB DEV',
      themeColor: '#ff2a55'
    },
    {
      num: '02',
      icon: '💼',
      name: 'Freelancing Portfolio',
      desc: 'Full-stack client portfolio for engineering services. Showcases case studies, services, and high-conversion booking workflows.',
      tags: ['Fullstack', 'React', 'Vercel', 'Tailwind'],
      link: 'https://freelance-portfolio-client-delta.vercel.app/',
      gh: 'https://github.com/vivek0052',
      img: 'images/proj2.png',
      sub: 'Clients Showcase & Service Platform',
      overview: "A full-stack, modular client portfolio built for showcasing freelance engineering services. Enables frictionless navigation and high conversion rates for inbound technical leads.",
      duration: 'Jan 2025 - Feb 2025',
      role: 'Full Stack Dev',
      status: 'Live & Active',
      features: [
        'Dynamic Client-Side Routing Architecture',
        'Bento-Style Telemetry Dashboard Layout',
        'Structured Services Listing Matrix',
        'Automated Inbound Lead Intake Handlers'
      ],
      metrics: { perf: 96, quality: 'A', qualityBar: 92, best: 95, access: 98 },
      dbName: 'Supabase SQL Database',
      category: 'web',
      categoryLabel: 'WEB DEV',
      themeColor: '#ff2a55'
    },
    {
      num: '03',
      icon: '📈',
      name: 'Live Crypto Tracker',
      desc: 'Real-time cryptocurrency price tracking with live WebSocket feeds, responsive charts, and custom watchlist persistence.',
      tags: ['API', 'Real-time', 'Chart.js', 'Fintech'],
      link: 'https://live-crypto-update.vercel.app/',
      gh: 'https://github.com/vivek0052',
      img: 'images/proj3.png',
      sub: 'Real-time Price & Watchlist Tracker',
      overview: "A real-time cryptocurrency telemetry tracking application. Connects to coin exchange APIs to stream live prices and render responsive historical candlestick charts.",
      duration: 'Nov 2024 - Dec 2024',
      role: 'Frontend Engineer',
      status: 'Live & Active',
      features: [
        'Real-time Exchange REST API Polling',
        'Interactive Price Trend Charts & Sparklines',
        'Filterable Coins Search & Volatility Matrix',
        'Custom Watchlist LocalStorage Persistence'
      ],
      metrics: { perf: 94, quality: 'A+', qualityBar: 96, best: 98, access: 95 },
      dbName: 'LocalStorage (Watchlists Cache)',
      category: 'web',
      categoryLabel: 'WEB DEV',
      themeColor: '#ff2a55'
    },
    {
      num: '04',
      icon: '🎬',
      name: 'Movie Booking App',
      desc: 'Interactive cinematic ticket booking platform. Browse shows, select hall seats in real-time, and complete simulated checkout.',
      tags: ['JavaScript', 'UI/UX', 'State Machine'],
      link: 'https://ticket-booking-green.vercel.app/',
      gh: 'https://github.com/vivek0052',
      img: 'images/proj4.png',
      sub: 'Ticket Booking & Seat Reservation',
      overview: "An interactive seat reservation platform for cinematic halls. Manages live booking transactions and grid state locks dynamically with instant visual feedback.",
      duration: 'Oct 2024 - Nov 2024',
      role: 'UI/UX Developer',
      status: 'Completed',
      features: [
        'Interactive Seating Grid Map with State Locks',
        'Real-time Selected Seat Buffer & Timers',
        'Dynamic Pricing Calculation Engine',
        'Ticket Pass Export & Receipt Card'
      ],
      metrics: { perf: 92, quality: 'B+', qualityBar: 88, best: 90, access: 94 },
      dbName: 'Firebase Realtime DB',
      category: 'web',
      categoryLabel: 'WEB DEV',
      themeColor: '#ff2a55'
    },
    {
      num: '05',
      icon: '⚡',
      name: 'Real-Time Dashboard',
      desc: 'High-density telemetry analytics dashboard built with TypeScript. Live metrics widgets, clean bento grid, and high-frequency feeds.',
      tags: ['TypeScript', 'Dashboard', 'DataViz'],
      link: 'https://real-time-dashboard-three.vercel.app/',
      gh: 'https://github.com/vivek0052',
      img: 'images/analytics_mockup.png',
      sub: 'Live Telemetry & Metrics Monitor',
      overview: "A dashboard built with TypeScript for visualizing live metrics, resource telemetry tracking, and grid analytics with minimal CPU overhead.",
      duration: 'Aug 2024 - Sep 2024',
      role: 'Dashboard Engineer',
      status: 'Completed',
      features: [
        'Modular Telemetry Widget Cards',
        'Real-time Chart.js Graphing Data Stream',
        'System Metric Progress Bars & Alarms',
        'Active Columns Sorting & Quick Search'
      ],
      metrics: { perf: 98, quality: 'A+', qualityBar: 98, best: 100, access: 98 },
      dbName: 'PostgreSQL Server Instance',
      category: 'web',
      categoryLabel: 'WEB DEV',
      themeColor: '#ff2a55'
    },
    {
      num: '06',
      icon: '🍔',
      name: 'Food Delivery Site',
      desc: 'Fast food ordering website built with Next.js and TypeScript. Menu browsing, interactive cart, and optimized checkout flow.',
      tags: ['Next.js', 'TypeScript', 'E-commerce'],
      link: 'https://fast-food-website-two.vercel.app/',
      gh: 'https://github.com/vivek0052',
      img: 'images/proj6.png',
      sub: 'Next.js E-Commerce Storefront',
      overview: "A production-ready e-commerce food storefront designed with Next.js Server Components. Implements shopping carts, variant modifiers, and checkout flows.",
      duration: 'Jul 2024 - Aug 2024',
      role: 'Full Stack Engineer',
      status: 'Completed',
      features: [
        'Dynamic Shopping Cart State Handler',
        'Stripe Checkout API Simulation Integration',
        'Product Categories Tab Filtering',
        'Next.js Image CDN Edge Optimization'
      ],
      metrics: { perf: 95, quality: 'A', qualityBar: 93, best: 96, access: 97 },
      dbName: 'MongoDB Cluster (Catalog Database)',
      category: 'web',
      categoryLabel: 'WEB DEV',
      themeColor: '#ff2a55'
    },
    {
      num: '07',
      icon: '✅',
      name: 'Live Task Manager',
      desc: 'Task management and workflow planner with real-time state, category tagging, drag sorting, and clean productivity UI.',
      tags: ['JavaScript', 'Productivity', 'PWA'],
      link: 'https://taskmaster-liart.vercel.app/',
      gh: 'https://github.com/vivek0052',
      img: 'images/proj7.png',
      sub: 'Productivity & Task Planner App',
      overview: "A responsive productivity task planner designed for efficient daily sprint planning. Saves tasks and states locally with instant offline readiness.",
      duration: 'Jun 2024 - Jul 2024',
      role: 'JavaScript Developer',
      status: 'Completed',
      features: [
        'Dynamic Category Tag Filtering',
        'Drag-and-Drop Task Priority Sorting',
        'Productivity Metrics Progression Tracker',
        'Responsive Mobile-Ready Cards Grid'
      ],
      metrics: { perf: 97, quality: 'A', qualityBar: 92, best: 98, access: 96 },
      dbName: 'LocalStorage (Tasks File)',
      category: 'web',
      categoryLabel: 'WEB DEV',
      themeColor: '#ff2a55'
    },
    {
      num: '08',
      icon: '🎨',
      name: 'Figma Prototype',
      desc: 'Cake & Pastry — high-fidelity Figma UI prototype. Interactive drawer flows, custom typography tokens, and pixel-perfect design systems.',
      tags: ['Figma', 'UI Design', 'Design System'],
      link: 'https://www.figma.com/proto/CchptbZVg3D7iTaxUZXcbl/',
      gh: 'https://github.com/vivek0052',
      img: 'images/proj8.png',
      sub: 'High-Fidelity Bakery UI Prototype',
      overview: "A high-fidelity Figma design prototype mapping cake shop user journeys. Developed with custom typography tokens, components, and interactive overlays.",
      duration: 'May 2024 - Jun 2024',
      role: 'UI/UX Designer',
      status: 'Completed',
      features: [
        'Pixel-Perfect Landing Artboard Architecture',
        'Interactive Modal & Drawer Sidebars',
        'Refined Typography & Color Design Tokens',
        'Click-to-Navigate Prototype Link Overlays'
      ],
      metrics: { perf: 100, quality: 'A+', qualityBar: 100, best: 100, access: 99 },
      dbName: 'Figma Variables Library',
      category: 'design',
      categoryLabel: 'UI/UX DESIGN',
      themeColor: '#ff2a55'
    },
    {
      num: '09',
      icon: '🖥️',
      name: 'Framer Portfolio',
      desc: 'A sleek portfolio built entirely in Framer. Scroll-triggered micro-interactions, responsive fluid breakpoints, and polished typography.',
      tags: ['Framer', 'Motion', 'No-Code'],
      link: 'https://vkdportfolio.framer.website/',
      gh: 'https://github.com/vivek0052',
      img: 'images/proj9.png',
      sub: 'Interactive Framer Motion Site',
      overview: "A highly animated portfolio site designed completely in Framer. Highlights scroll-based triggers, dynamic fluid responsiveness, and interactive components.",
      duration: 'Apr 2024 - May 2024',
      role: 'Framer Developer',
      status: 'Completed',
      features: [
        'Dynamic Scroll-Triggered Motion Curves',
        'Fluid Viewport Adaptive Layouts',
        'Structured Framer CMS Integration',
        'Parallax Images Scrolling Overlay'
      ],
      metrics: { perf: 93, quality: 'A', qualityBar: 91, best: 94, access: 96 },
      dbName: 'Framer CMS Database',
      category: 'design',
      categoryLabel: 'UI/UX DESIGN',
      themeColor: '#ff2a55'
    },
    {
      num: '10',
      icon: '💬',
      name: 'Varta',
      desc: 'Real-time WebSocket chat application with instant 1-on-1 rooms, typing status telemetry, and a dark glassmorphic UI.',
      tags: ['JavaScript', 'WebSockets', 'Firebase', 'Socket.io'],
      link: 'https://github.com/vivek0052/varta',
      gh: 'https://github.com/vivek0052/varta',
      img: 'images/varta_mockup.png',
      sub: 'Real-time Secure Messaging App',
      overview: "A production chatting platform mimicking modern secure messengers. Uses socket systems to bridge messages immediately with zero database poll lag.",
      duration: 'May 2024 - Jul 2024',
      role: 'Full Stack Dev',
      status: 'Live & Active',
      features: [
        'Real-time WebSocket Bidirectional Messaging',
        'Active Online Status Indicators',
        'Typing Telemetry Broadcaster',
        'Dark Glassmorphic UI Dashboard'
      ],
      metrics: { perf: 95, quality: 'A', qualityBar: 94, best: 96, access: 95 },
      dbName: 'MongoDB Replica Set',
      category: 'chat',
      categoryLabel: 'REAL-TIME CHAT',
      themeColor: '#ff2a55'
    },
    {
      num: '11',
      icon: '📐',
      name: 'Skills Dome Visualizer',
      desc: 'Interactive semicircle dome visualizing technical and soft competencies. Animated conveyor belt orbits built with colorful SVG brand paths.',
      tags: ['SVG', 'Animation', 'UI Design'],
      link: 'about.html',
      gh: 'https://github.com/vivek0052',
      img: 'images/skills_mockup.png',
      sub: 'Cinematic Skills Dome Interface',
      overview: "An interactive conveyor belt semicircle dome layout displaying technical competencies and soft skills with colorful customized SVG brand paths.",
      duration: 'Jun 2024 - Jul 2024',
      role: 'UX Engineer',
      status: 'Completed',
      features: [
        'Semicircle Conveyor Layout Wrapping',
        'Smooth Auto-Rotation Loop',
        'Adaptive Orbit Node Sizing',
        'Distance-to-Edge Opacity Fades'
      ],
      metrics: { perf: 99, quality: 'A+', qualityBar: 98, best: 99, access: 98 },
      dbName: 'LocalStorage Config Cache',
      category: 'design',
      categoryLabel: 'UI/UX DESIGN',
      themeColor: '#ff2a55'
    },
    {
      num: '12',
      icon: '🌍',
      name: '3D WebGL Globe Explorer',
      desc: 'WebGL-powered interactive 3D globe visualization in a bento card layout. Displays active communication links and custom connection nodes.',
      tags: ['Three.js', 'WebGL', 'DataViz'],
      link: 'index.html',
      gh: 'https://github.com/vivek0052',
      img: 'images/globe_mockup.png',
      sub: 'Holographic 3D Globe Visualizer',
      overview: "A custom WebGL 3D globe explorer showcasing geographic connection nodes, resource coordinates, and smooth rotational orbit physics.",
      duration: 'Jul 2024 - Aug 2024',
      role: 'WebGL Developer',
      status: 'Completed',
      features: [
        'Interactive WebGL Globe Mesh',
        'Holographic Atmosphere Glow Shaders',
        'Dynamic Coordinate Nodes Mapping',
        'Damped Mouse Parallax Tracking'
      ],
      metrics: { perf: 95, quality: 'A', qualityBar: 94, best: 96, access: 95 },
      dbName: 'Three.js Camera Telemetry',
      category: 'web',
      categoryLabel: 'WEB DEV',
      themeColor: '#ff2a55'
    }
  ];

  const N = projects.length;
  const mod = (n, m) => ((n % m) + m) % m;

  // ── 2. LENIS SMOOTH SCROLL & SCROLLTRIGGER SETUP ──
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
      gsap.ticker.add((time) => {
        lenis.raf(time * 1000);
      });
      gsap.ticker.lagSmoothing(0);
    } else {
      function raf(time) {
        lenis.raf(time);
        requestAnimationFrame(raf);
      }
      requestAnimationFrame(raf);
    }
  }

  // ── 3. MINIMAL PRELOADER & HERO ENTRANCE (< 1.2s) ──
  function initPreloader() {
    const preloader = document.getElementById('preloader');
    const logoInner = document.querySelector('.preloader-logo-inner');
    const lineFill = document.querySelector('.preloader-line-fill');

    if (!preloader) {
      initHeroAnimations();
      return;
    }

    if (prefersReducedMotion) {
      preloader.style.display = 'none';
      initHeroAnimations();
      return;
    }

    const tl = gsap.timeline({
      onComplete: () => {
        preloader.style.display = 'none';
        initHeroAnimations();
      }
    });

    tl.to(logoInner, {
      y: '0%',
      duration: 0.45,
      ease: 'power3.out'
    })
    .to(lineFill, {
      width: '100%',
      duration: 0.55,
      ease: 'power2.inOut'
    }, '-=0.25')
    .to(preloader, {
      y: '-100%',
      duration: 0.5,
      ease: 'expo.inOut'
    }, '+=0.05');
  }

  // ── 4. HERO SECTION ANIMATIONS (GSAP MASK SLIDE-UP, SVG DRAW, STATS) ──
  function initHeroAnimations() {
    const titleWords = document.querySelectorAll('.bp-hero-title .word-inner');
    const badge = document.querySelector('.bp-eyebrow-wrapper');
    const subtitle = document.querySelector('.bp-hero-subtitle');
    const stats = document.querySelector('.bp-hero-stats');
    const actions = document.querySelector('.bp-hero-actions');
    const scrollIndicator = document.querySelector('.bp-scroll-indicator');
    const svgDraftLines = document.querySelectorAll('.bp-draft-line');

    if (prefersReducedMotion) {
      gsap.set([titleWords, badge, subtitle, stats, actions, scrollIndicator], { opacity: 1, y: 0 });
      initStatsCountUp();
      return;
    }

    const heroTl = gsap.timeline({ delay: 0.1 });

    if (badge) {
      heroTl.fromTo(badge, { opacity: 0, y: 20 }, { opacity: 1, y: 0, duration: 0.6, ease: 'power3.out' });
    }

    if (titleWords.length > 0) {
      heroTl.fromTo(titleWords, 
        { y: '110%', opacity: 0 }, 
        { y: '0%', opacity: 1, duration: 0.85, stagger: 0.08, ease: 'power3.out' }, 
        '-=0.3'
      );
    }

    // Draw SVG technical draft lines behind text
    if (svgDraftLines.length > 0) {
      heroTl.to(svgDraftLines, {
        strokeDashoffset: 0,
        duration: 1.4,
        stagger: 0.15,
        ease: 'power2.out'
      }, '-=0.8');
    }

    if (subtitle) {
      heroTl.fromTo(subtitle, { opacity: 0, y: 24 }, { opacity: 1, y: 0, duration: 0.7, ease: 'power3.out' }, '-=0.6');
    }

    if (stats) {
      heroTl.fromTo(stats, { opacity: 0, y: 24 }, { 
        opacity: 1, 
        y: 0, 
        duration: 0.7, 
        ease: 'power3.out',
        onComplete: initStatsCountUp
      }, '-=0.5');
    }

    if (actions) {
      heroTl.fromTo(actions, { opacity: 0, y: 20 }, { opacity: 1, y: 0, duration: 0.6, ease: 'power3.out' }, '-=0.4');
    }

    if (scrollIndicator) {
      heroTl.fromTo(scrollIndicator, { opacity: 0 }, { opacity: 1, duration: 0.6, ease: 'power2.out' }, '-=0.2');
    }

    // Slow Background Parallax on Scroll
    if (window.ScrollTrigger) {
      gsap.to('#bpHeroBgImg', {
        yPercent: 18,
        scale: 1.12,
        ease: 'none',
        scrollTrigger: {
          trigger: '#hero-blueprint',
          start: 'top top',
          end: 'bottom top',
          scrub: true
        }
      });

      // Section Heading Underline Draw on Scroll
      ScrollTrigger.create({
        trigger: '#projects-stage',
        start: 'top 75%',
        onEnter: () => {
          const header = document.querySelector('.showcase-header');
          if (header) header.classList.add('in-view');
        }
      });
    }

    initHeroMouseParallax();
  }

  function initStatsCountUp() {
    const statsNums = document.querySelectorAll('.bp-stat-num');
    if (!statsNums.length) return;

    statsNums.forEach((el) => {
      const targetStr = el.getAttribute('data-target') || el.textContent.trim();
      if (targetStr.includes('%')) {
        const val = parseInt(targetStr, 10);
        let obj = { count: 0 };
        gsap.to(obj, {
          count: val,
          duration: 1.4,
          ease: 'power3.out',
          onUpdate: () => { el.textContent = Math.round(obj.count) + '%'; }
        });
      } else if (targetStr.includes('FPS')) {
        const val = parseInt(targetStr, 10);
        let obj = { count: 0 };
        gsap.to(obj, {
          count: val,
          duration: 1.4,
          ease: 'power3.out',
          onUpdate: () => { el.textContent = Math.round(obj.count) + 'FPS'; }
        });
      } else if (targetStr.includes('s')) {
        const val = parseFloat(targetStr);
        let obj = { count: 1.0 };
        gsap.to(obj, {
          count: val,
          duration: 1.4,
          ease: 'power3.out',
          onUpdate: () => { el.textContent = obj.count.toFixed(1) + 's'; }
        });
      }
    });
  }

  function initHeroMouseParallax() {
    const hero = document.getElementById('hero-blueprint');
    const bgImg = document.getElementById('bpHeroBgImg');
    if (!hero || !bgImg || isTouchDevice || prefersReducedMotion) return;

    let targetX = 0, targetY = 0;
    let currentX = 0, currentY = 0;

    hero.addEventListener('mousemove', (e) => {
      const rect = hero.getBoundingClientRect();
      const x = (e.clientX - rect.left) / rect.width - 0.5;
      const y = (e.clientY - rect.top) / rect.height - 0.5;
      targetX = x * 28;
      targetY = y * 28;
    });

    hero.addEventListener('mouseleave', () => {
      targetX = 0;
      targetY = 0;
    });

    function loop() {
      currentX += (targetX - currentX) * 0.08;
      currentY += (targetY - currentY) * 0.08;
      bgImg.style.transform = `translate3d(${currentX.toFixed(2)}px, ${currentY.toFixed(2)}px, 0) scale(1.08)`;
      requestAnimationFrame(loop);
    }
    requestAnimationFrame(loop);
  }

  // ── 5. NAVBAR (SMART AUTO-HIDE, MAGNETIC HOVER, VIEW TRANSITION THEME) ──
  function initNavbar() {
    const nav = document.querySelector('.bp-navbar');
    const themeBtn = document.getElementById('themeToggle');
    const ham = document.getElementById('ham');
    const mob = document.getElementById('mob');
    const scrollBar = document.getElementById('scroll-progress');

    let lastScrollY = window.pageYOffset || 0;
    let ticking = false;

    window.addEventListener('scroll', () => {
      if (!ticking) {
        window.requestAnimationFrame(() => {
          const currentY = window.pageYOffset || 0;

          if (scrollBar) {
            const totalDocHeight = document.documentElement.scrollHeight - window.innerHeight;
            const progress = totalDocHeight > 0 ? (currentY / totalDocHeight) * 100 : 0;
            scrollBar.style.width = `${progress}%`;
          }

          if (currentY > 24) {
            nav.classList.add('scrolled');
          } else {
            nav.classList.remove('scrolled');
          }

          if (currentY > 160 && currentY > lastScrollY && !mob.classList.contains('open')) {
            nav.classList.add('nav-hidden');
          } else {
            nav.classList.remove('nav-hidden');
          }

          lastScrollY = Math.max(0, currentY);
          ticking = false;
        });
        ticking = true;
      }
    }, { passive: true });

    initMagneticElements();

    if (ham && mob) {
      ham.addEventListener('click', () => {
        const isOpen = ham.classList.toggle('active');
        mob.classList.toggle('open', isOpen);
        if (isOpen) {
          if (lenis) lenis.stop();
          gsap.fromTo('.mobile-nav-link', 
            { y: 35, opacity: 0 }, 
            { y: 0, opacity: 1, duration: 0.5, stagger: 0.08, ease: 'power3.out' }
          );
        } else {
          if (lenis) lenis.start();
        }
      });

      mob.querySelectorAll('a').forEach(a => {
        a.addEventListener('click', () => {
          ham.classList.remove('active');
          mob.classList.remove('open');
          if (lenis) lenis.start();
        });
      });
    }

    if (themeBtn) {
      themeBtn.addEventListener('click', (e) => {
        toggleTheme(e);
      });
    }
  }

  function applyTheme(theme) {
    document.documentElement.setAttribute('data-theme', theme);
    localStorage.setItem('theme', theme);
    const sun = document.querySelector('.sun-icon');
    const moon = document.querySelector('.moon-icon');
    if (sun && moon) {
      if (theme === 'light') {
        sun.style.display = 'inline';
        moon.style.display = 'none';
      } else {
        sun.style.display = 'none';
        moon.style.display = 'inline';
      }
    }
  }

  function toggleTheme(e) {
    const currentTheme = document.documentElement.getAttribute('data-theme') || 'dark';
    const nextTheme = currentTheme === 'dark' ? 'light' : 'dark';

    if (!document.startViewTransition || prefersReducedMotion) {
      applyTheme(nextTheme);
      return;
    }

    const x = e?.clientX ?? window.innerWidth / 2;
    const y = e?.clientY ?? 40;
    const endRadius = Math.hypot(Math.max(x, window.innerWidth - x), Math.max(y, window.innerHeight - y));

    const transition = document.startViewTransition(() => {
      applyTheme(nextTheme);
    });

    transition.ready.then(() => {
      document.documentElement.animate(
        {
          clipPath: [
            `circle(0px at ${x}px ${y}px)`,
            `circle(${endRadius}px at ${x}px ${y}px)`
          ]
        },
        {
          duration: 650,
          easing: 'cubic-bezier(0.16, 1, 0.3, 1)',
          pseudoElement: '::view-transition-new(root)'
        }
      );
    });
  }

  function initMagneticElements() {
    if (isTouchDevice || prefersReducedMotion) return;

    const magnets = document.querySelectorAll('.btn-book-call, .theme-toggle-btn, .bp-btn-primary, .bp-btn-secondary, .social-pill');
    magnets.forEach((el) => {
      el.addEventListener('mousemove', (e) => {
        const rect = el.getBoundingClientRect();
        const x = (e.clientX - (rect.left + rect.width / 2)) * 0.32;
        const y = (e.clientY - (rect.top + rect.height / 2)) * 0.32;
        gsap.to(el, { x, y, duration: 0.3, ease: 'power2.out' });
      });

      el.addEventListener('mouseleave', () => {
        gsap.to(el, { x: 0, y: 0, duration: 0.5, ease: 'elastic.out(1, 0.4)' });
      });
    });
  }

  // ── 6. NEW HOLOGRAPHIC BENTO DECK & INTERACTIVE CARDS GRID ──
  let cardsContainer = null;
  let searchInput = null;
  let activeCategory = 'all';

  function initShowcaseGrid() {
    cardsContainer = document.getElementById('showcaseCardsGrid');
    searchInput = document.getElementById('showcaseSearchInput');
    if (!cardsContainer) return;

    renderProjectCards(projects);
    setupShowcaseFilters();
    setupShowcaseSearch();
  }

  function renderProjectCards(list) {
    cardsContainer.innerHTML = '';

    list.forEach((p, idx) => {
      const card = document.createElement('article');
      card.className = 'project-bento-card';
      card.dataset.cat = p.category;
      card.dataset.name = p.name.toLowerCase();
      card.dataset.desc = p.desc.toLowerCase();
      card.dataset.index = idx;
      card.setAttribute('role', 'button');
      card.setAttribute('tabindex', '0');
      card.setAttribute('aria-label', `View Blueprint for ${p.name}`);

      card.innerHTML = `
        <div class="card-corner-marker tl">+</div>
        <div class="card-corner-marker tr">+</div>
        <div class="card-cursor-spotlight"></div>

        <!-- Visual Stage -->
        <div class="card-visual-stage">
          <img src="${p.img}" alt="${p.name} preview" class="card-mockup-img" loading="lazy" width="600" height="340" />
          <div class="card-visual-scrim"></div>
          <div class="card-badge-row">
            <span class="card-num-badge">[${p.num}]</span>
            <span class="card-cat-badge">${p.categoryLabel || p.category.toUpperCase()}</span>
          </div>
        </div>

        <!-- Content Body -->
        <div class="card-body-content">
          <div class="card-title-row">
            <h3 class="card-project-title">${p.name}</h3>
            <span class="card-project-sub">${p.sub}</span>
          </div>

          <p class="card-project-desc">${p.desc}</p>

          <!-- Tech Stack Chips -->
          <div class="card-tech-chips">
            ${p.tags.map(t => `<span class="card-tech-pill">${t}</span>`).join('')}
          </div>

          <!-- Quick Metrics Bar -->
          <div class="card-metrics-row">
            <div class="card-metric-badge">
              <span class="card-status-dot"></span>
              <span>STATUS:</span>
              <strong>${p.status.toUpperCase()}</strong>
            </div>
            <div class="card-metric-badge">
              <span>PERF:</span>
              <strong class="tabular">${p.metrics.perf}%</strong>
            </div>
          </div>

          <!-- Action Buttons -->
          <div class="card-action-bar">
            <button class="btn-card-blueprint" onclick="event.stopPropagation(); window.openProjectModal(${idx});">
              Blueprint ⚙
            </button>
            <a href="${p.link}" target="_blank" rel="noopener noreferrer" class="btn-card-demo" onclick="event.stopPropagation();">
              Live Demo ↗
            </a>
          </div>
        </div>
      `;

      // Open Modal on Card Click
      card.addEventListener('click', () => {
        openModal(idx);
      });

      card.addEventListener('keydown', (e) => {
        if (e.key === 'Enter' || e.key === ' ') {
          e.preventDefault();
          openModal(idx);
        }
      });

      // 3D Perspective Card Tilt on Mousemove
      if (!isTouchDevice && !prefersReducedMotion) {
        card.addEventListener('mousemove', (e) => {
          const rect = card.getBoundingClientRect();
          const x = e.clientX - rect.left;
          const y = e.clientY - rect.top;

          card.style.setProperty('--mouse-x', `${x}px`);
          card.style.setProperty('--mouse-y', `${y}px`);

          const centerX = rect.width / 2;
          const centerY = rect.height / 2;
          const rotX = ((y - centerY) / centerY) * -7;
          const rotY = ((x - centerX) / centerX) * 7;

          card.style.transform = `perspective(1000px) rotateX(${rotX.toFixed(2)}deg) rotateY(${rotY.toFixed(2)}deg) translateY(-8px) scale(1.02)`;
        });

        card.addEventListener('mouseenter', () => {
          document.body.classList.add('cursor-view');
        });

        card.addEventListener('mouseleave', () => {
          card.style.transform = '';
          document.body.classList.remove('cursor-view');
        });
      }

      cardsContainer.appendChild(card);
    });

    // Stagger in cards smoothly
    if (!prefersReducedMotion) {
      gsap.fromTo('.project-bento-card', 
        { opacity: 0, y: 35, scale: 0.96 }, 
        { opacity: 1, y: 0, scale: 1, duration: 0.55, stagger: 0.05, ease: 'power3.out' }
      );
    }
  }

  function setupShowcaseFilters() {
    const filterBtns = document.querySelectorAll('.filter-tag-btn');
    filterBtns.forEach((btn) => {
      btn.addEventListener('click', () => {
        filterBtns.forEach(b => b.classList.remove('active'));
        btn.classList.add('active');
        activeCategory = btn.dataset.tag;
        applyShowcaseFilter();
      });
    });
  }

  function setupShowcaseSearch() {
    if (!searchInput) return;

    searchInput.addEventListener('input', () => {
      applyShowcaseFilter();
    });

    const clearBtn = document.getElementById('searchClearBtn');
    if (clearBtn) {
      clearBtn.addEventListener('click', () => {
        searchInput.value = '';
        applyShowcaseFilter();
      });
    }
  }

  function applyShowcaseFilter() {
    const query = (searchInput ? searchInput.value : '').toLowerCase().trim();
    const cards = document.querySelectorAll('.project-bento-card');
    let visibleCards = [];

    cards.forEach((card) => {
      const cat = card.dataset.cat;
      const name = card.dataset.name;
      const desc = card.dataset.desc;

      const matchesCat = (activeCategory === 'all' || cat === activeCategory);
      const matchesQuery = (!query || name.includes(query) || desc.includes(query));

      if (matchesCat && matchesQuery) {
        card.classList.remove('filtered-out');
        visibleCards.push(card);
      } else {
        card.classList.add('filtered-out');
      }
    });

    if (!prefersReducedMotion && visibleCards.length > 0) {
      gsap.fromTo(visibleCards, 
        { opacity: 0, y: 20 }, 
        { opacity: 1, y: 0, duration: 0.4, stagger: 0.04, ease: 'power3.out' }
      );
    }
  }

  // ── 7. DYNAMIC SVG BLUEPRINT GENERATORS (RED & BLACK RESKIN) ──
  function generateSystemLayoutSVG(p) {
    const isMobile = p.num === '10';
    const isDesign = p.num === '08';

    if (isMobile) {
      return `
        <svg class="bp-svg" viewBox="0 0 800 480" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg">
          <g fill="none" stroke="rgba(255, 42, 85, 0.25)" stroke-width="1">
            <line x1="80" y1="0" x2="80" y2="480" stroke="rgba(255, 42, 85, 0.06)" />
            <line x1="720" y1="0" x2="720" y2="480" stroke="rgba(255, 42, 85, 0.06)" />
            
            <!-- Mobile Phone Blueprint Shell -->
            <rect x="290" y="24" width="220" height="432" rx="32" stroke="rgba(255, 42, 85, 0.85)" stroke-width="2.5" />
            <rect x="302" y="36" width="196" height="408" rx="22" stroke="rgba(255, 42, 85, 0.4)" stroke-width="1.5" />
            
            <!-- Notch -->
            <path d="M 370 36 Q 370 50, 385 50 L 415 50 Q 430 50, 430 36" fill="rgba(255, 42, 85, 0.15)" stroke="rgba(255, 42, 85, 0.8)" />
            
            <!-- Header bar -->
            <line x1="302" y1="80" x2="498" y2="80" stroke="rgba(255, 42, 85, 0.45)" stroke-width="1.5" />
            <circle cx="330" cy="62" r="10" stroke="rgba(255, 42, 85, 0.6)" stroke-width="1.5" />
            <rect x="350" y="57" width="80" height="10" rx="3" fill="rgba(255, 42, 85, 0.2)" />
            
            <!-- Message Chat Bubbles -->
            <rect x="314" y="102" width="115" height="36" rx="8" fill="rgba(255, 42, 85, 0.08)" stroke="rgba(255, 42, 85, 0.4)" />
            <rect x="326" y="112" width="90" height="6" rx="2" fill="rgba(255, 42, 85, 0.3)" />
            <rect x="326" y="124" width="55" height="6" rx="2" fill="rgba(255, 42, 85, 0.3)" />
            
            <rect x="370" y="152" width="118" height="48" rx="8" fill="rgba(255, 82, 119, 0.12)" stroke="rgba(255, 82, 119, 0.6)" />
            <rect x="382" y="162" width="95" height="6" rx="2" fill="rgba(255, 82, 119, 0.45)" />
            <rect x="382" y="174" width="75" height="6" rx="2" fill="rgba(255, 82, 119, 0.45)" />
            <rect x="382" y="186" width="45" height="6" rx="2" fill="rgba(255, 82, 119, 0.45)" />
            
            <!-- Input Console -->
            <rect x="314" y="402" width="145" height="26" rx="13" stroke="rgba(255, 42, 85, 0.6)" />
            <circle cx="478" cy="415" r="12" fill="rgba(255, 82, 119, 0.2)" stroke="rgba(255, 82, 119, 0.85)" />
            
            <!-- Annotations -->
            <line x1="512" y1="240" x2="620" y2="240" stroke="rgba(255, 42, 85, 0.8)" stroke-dasharray="3,3" />
            <circle cx="512" cy="240" r="3" fill="rgba(255, 42, 85, 0.8)" />
            <text x="630" y="244" fill="rgba(255, 42, 85, 0.9)" font-family="monospace" font-size="11">VIEWPORT: 375x812px</text>
          </g>
        </svg>
      `;
    }

    if (isDesign) {
      return `
        <svg class="bp-svg" viewBox="0 0 800 480" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg">
          <g fill="none" stroke="rgba(255, 42, 85, 0.22)" stroke-width="1">
            <rect x="40" y="24" width="720" height="432" stroke="rgba(255, 42, 85, 0.6)" stroke-width="2" />
            <rect x="40" y="24" width="170" height="432" stroke="rgba(255, 42, 85, 0.4)" />
            <text x="56" y="52" fill="rgba(255, 42, 85, 0.95)" font-family="monospace" font-size="12" font-weight="bold">DESIGN SYSTEM</text>
            <text x="56" y="80" fill="rgba(255, 42, 85, 0.65)" font-family="monospace" font-size="11"># Hero Banner</text>
            <text x="56" y="105" fill="rgba(255, 42, 85, 0.65)" font-family="monospace" font-size="11"># Typography Scale</text>
            <text x="56" y="130" fill="rgba(255, 42, 85, 0.65)" font-family="monospace" font-size="11"># Card Matrix</text>
            
            <!-- Canvas Frames -->
            <rect x="240" y="60" width="240" height="160" stroke="rgba(255, 42, 85, 0.8)" stroke-width="1.5" />
            <text x="240" y="50" fill="rgba(255, 42, 85, 0.85)" font-family="monospace" font-size="11">Desktop - Artboard 01</text>
            
            <rect x="520" y="60" width="110" height="190" stroke="rgba(255, 42, 85, 0.8)" stroke-width="1.5" />
            <text x="520" y="50" fill="rgba(255, 42, 85, 0.85)" font-family="monospace" font-size="11">Mobile - Frame 02</text>
            
            <path d="M 480 140 C 510 140, 500 190, 520 190" stroke="rgba(255, 82, 119, 0.85)" stroke-width="2" stroke-dasharray="4,4" />
            <polygon points="520,190 514,186 514,194" fill="rgba(255, 82, 119, 0.85)" />
            <text x="440" y="235" fill="rgba(255, 82, 119, 0.85)" font-family="monospace" font-size="10">INTERACTIVE FLOW</text>
          </g>
        </svg>
      `;
    }

    // Default Web Architecture View
    return `
      <svg class="bp-svg" viewBox="0 0 800 480" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg">
        <g fill="none" stroke="rgba(255, 42, 85, 0.22)" stroke-width="1">
          <rect x="70" y="32" width="660" height="416" rx="8" stroke="rgba(255, 42, 85, 0.85)" stroke-width="2" />
          <line x1="70" y1="74" x2="730" y2="74" stroke="rgba(255, 42, 85, 0.75)" stroke-width="1.5" />
          
          <!-- Window Controls -->
          <circle cx="95" cy="53" r="5" fill="rgba(255, 42, 85, 0.2)" stroke="rgba(255, 42, 85, 0.8)" />
          <circle cx="110" cy="53" r="5" fill="rgba(255, 42, 85, 0.2)" stroke="rgba(255, 42, 85, 0.8)" />
          <circle cx="125" cy="53" r="5" fill="rgba(255, 42, 85, 0.2)" stroke="rgba(255, 42, 85, 0.8)" />
          
          <rect x="150" y="43" width="480" height="20" rx="5" stroke="rgba(255, 42, 85, 0.4)" />
          <line x1="165" y1="53" x2="260" y2="53" stroke="rgba(255, 42, 85, 0.6)" stroke-width="1.5" />
          
          <!-- Sidebar -->
          <rect x="70" y="74" width="150" height="374" stroke="rgba(255, 42, 85, 0.35)" />
          
          <!-- Main Content Grid -->
          <rect x="245" y="94" width="460" height="105" rx="6" fill="rgba(255, 42, 85, 0.05)" stroke="rgba(255, 42, 85, 0.4)" />
          <line x1="265" y1="125" x2="420" y2="125" stroke="rgba(255, 42, 85, 0.7)" stroke-width="2" />
          <line x1="265" y1="150" x2="560" y2="150" stroke="rgba(255, 42, 85, 0.3)" />
          
          <!-- Bento Grid Columns -->
          <rect x="245" y="224" width="140" height="194" rx="6" fill="rgba(255, 42, 85, 0.05)" stroke="rgba(255, 42, 85, 0.4)" />
          <circle cx="315" cy="265" r="20" stroke="rgba(255, 42, 85, 0.5)" />
          
          <rect x="405" y="224" width="140" height="194" rx="6" fill="rgba(255, 42, 85, 0.05)" stroke="rgba(255, 42, 85, 0.4)" />
          <circle cx="475" cy="265" r="20" stroke="rgba(255, 42, 85, 0.5)" />
          
          <rect x="565" y="224" width="140" height="194" rx="6" fill="rgba(255, 42, 85, 0.05)" stroke="rgba(255, 42, 85, 0.4)" />
          <circle cx="635" cy="265" r="20" stroke="rgba(255, 42, 85, 0.5)" />
          
          <!-- Dimension -->
          <line x1="400" y1="32" x2="400" y2="8" stroke="rgba(255, 42, 85, 0.85)" stroke-width="1" />
          <text x="410" y="22" fill="rgba(255, 42, 85, 0.85)" font-family="monospace" font-size="11">MAX-WIDTH: 1280px</text>
        </g>
      </svg>
    `;
  }

  function generateDatabaseSchemaSVG(p) {
    const dbTech = p.dbName || 'POSTGRESQL RELATIONAL ENGINE';
    let t1Name = 'users', t1Cols = ['id: UUID [PK]', 'email: VARCHAR', 'created_at: TIMESTAMP'];
    let t2Name = 'records', t2Cols = ['id: UUID [PK]', 'user_id: UUID [FK]', 'value: TEXT', 'updated_at: TIMESTAMP'];
    let t3Name = 'analytics', t3Cols = ['id: UUID [PK]', 'record_id: UUID [FK]', 'event: VARCHAR', 'logged_at: TIMESTAMP'];

    if (p.num === '10') {
      t1Name = 'users'; t1Cols = ['id: ObjectId [PK]', 'username: STRING', 'avatar: STRING', 'status: BOOLEAN'];
      t2Name = 'messages'; t2Cols = ['id: ObjectId [PK]', 'sender_id: ObjectId [FK]', 'room_id: ObjectId [FK]', 'text: STRING'];
      t3Name = 'rooms'; t3Cols = ['id: ObjectId [PK]', 'name: STRING', 'type: STRING', 'created_by: ObjectId [FK]'];
    }

    return `
      <svg class="bp-svg" viewBox="0 0 800 480" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg">
        <g fill="none" stroke="rgba(255, 42, 85, 0.22)" stroke-width="1">
          <rect x="50" y="24" width="700" height="40" rx="5" fill="rgba(255, 42, 85, 0.06)" stroke="rgba(255, 42, 85, 0.5)" />
          <text x="70" y="49" fill="rgba(255, 82, 119, 0.95)" font-family="monospace" font-size="12" font-weight="bold">${dbTech.toUpperCase()} // ENTITY RELATIONSHIP</text>
          <circle cx="720" cy="44" r="6" fill="rgba(255, 82, 119, 0.85)" />
          
          <!-- Table 1 -->
          <rect x="50" y="100" width="180" height="190" rx="6" fill="rgba(255, 42, 85, 0.04)" stroke="rgba(255, 42, 85, 0.6)" stroke-width="1.5" />
          <rect x="50" y="100" width="180" height="30" fill="rgba(255, 42, 85, 0.16)" />
          <text x="60" y="121" fill="rgba(255, 42, 85, 0.95)" font-family="monospace" font-size="12" font-weight="bold">TABLE: ${t1Name}</text>
          ${t1Cols.map((c, i) => `
            <text x="60" y="${154 + i * 26}" fill="rgba(255, 42, 85, 0.75)" font-family="monospace" font-size="10">${c}</text>
            <line x1="50" y1="${164 + i * 26}" x2="230" y2="${164 + i * 26}" stroke="rgba(255, 42, 85, 0.08)" />
          `).join('')}
          
          <!-- Table 2 -->
          <rect x="310" y="100" width="180" height="210" rx="6" fill="rgba(255, 42, 85, 0.04)" stroke="rgba(255, 42, 85, 0.6)" stroke-width="1.5" />
          <rect x="310" y="100" width="180" height="30" fill="rgba(255, 42, 85, 0.16)" />
          <text x="320" y="121" fill="rgba(255, 42, 85, 0.95)" font-family="monospace" font-size="12" font-weight="bold">TABLE: ${t2Name}</text>
          ${t2Cols.map((c, i) => `
            <text x="320" y="${154 + i * 26}" fill="rgba(255, 42, 85, 0.75)" font-family="monospace" font-size="10">${c}</text>
            <line x1="310" y1="${164 + i * 26}" x2="490" y2="${164 + i * 26}" stroke="rgba(255, 42, 85, 0.08)" />
          `).join('')}
          
          <!-- Table 3 -->
          <rect x="570" y="100" width="180" height="190" rx="6" fill="rgba(255, 42, 85, 0.04)" stroke="rgba(255, 42, 85, 0.6)" stroke-width="1.5" />
          <rect x="570" y="100" width="180" height="30" fill="rgba(255, 42, 85, 0.16)" />
          <text x="580" y="121" fill="rgba(255, 42, 85, 0.95)" font-family="monospace" font-size="12" font-weight="bold">TABLE: ${t3Name}</text>
          ${t3Cols.map((c, i) => `
            <text x="580" y="${154 + i * 26}" fill="rgba(255, 42, 85, 0.75)" font-family="monospace" font-size="10">${c}</text>
            <line x1="570" y1="${164 + i * 26}" x2="750" y2="${164 + i * 26}" stroke="rgba(255, 42, 85, 0.08)" />
          `).join('')}
          
          <!-- Relational Links -->
          <path d="M 230 150 C 270 150, 270 180, 310 180" stroke="rgba(255, 82, 119, 0.85)" stroke-width="2" />
          <circle cx="230" cy="150" r="3.5" fill="rgba(255, 82, 119, 0.9)" />
          <circle cx="310" cy="180" r="3.5" fill="rgba(255, 82, 119, 0.9)" />
          <text x="245" y="142" fill="rgba(255, 82, 119, 0.85)" font-family="monospace" font-size="9">1:N FK</text>
        </g>
      </svg>
    `;
  }

  // ── 8. BLUEPRINT DETAIL MODAL CONTROLLER ──
  const modalOverlay = document.getElementById('modal-overlay');
  let currentModalIdx = 0;
  let activeTab = 'layout';
  let modalOpen = false;

  window.openProjectModal = function (idx) {
    openModal(idx);
  };

  function openModal(idx) {
    currentModalIdx = mod(idx, N);
    activeTab = 'layout';
    fillModalData(currentModalIdx);

    if (modalOverlay) {
      modalOverlay.classList.add('open');
      modalOpen = true;
      modalOverlay.setAttribute('aria-hidden', 'false');
      if (lenis) lenis.stop();

      if (!prefersReducedMotion) {
        gsap.fromTo('.modal-card', 
          { scale: 0.92, opacity: 0 }, 
          { scale: 1, opacity: 1, duration: 0.45, ease: 'power3.out' }
        );
      }
    }
  }

  function closeModal() {
    if (!modalOverlay || !modalOpen) return;
    modalOpen = false;
    modalOverlay.setAttribute('aria-hidden', 'true');

    if (!prefersReducedMotion) {
      gsap.to('.modal-card', {
        scale: 0.94,
        opacity: 0,
        duration: 0.35,
        ease: 'power3.in',
        onComplete: () => {
          modalOverlay.classList.remove('open');
          if (lenis) lenis.start();
        }
      });
    } else {
      modalOverlay.classList.remove('open');
      if (lenis) lenis.start();
    }
  }

  function fillModalData(idx) {
    const p = projects[idx];
    if (!p) return;

    const mHeaderMeta = document.getElementById('mHeaderMeta');
    const mTitle = document.getElementById('mTitle');
    const mSubtitle = document.getElementById('mSubtitle');
    const mOverview = document.getElementById('mOverview');
    const mDuration = document.getElementById('mDuration');
    const mRole = document.getElementById('mRole');
    const mStatus = document.getElementById('mStatus');
    const mTechGrid = document.getElementById('mTechGrid');
    const mFeaturesList = document.getElementById('mFeaturesList');
    const mLink = document.getElementById('mLink');
    const mGhLink = document.getElementById('mGhLink');

    if (mHeaderMeta) mHeaderMeta.textContent = `BLUEPRINT // REGISTRY SPEC // [${p.num}]`;
    if (mTitle) mTitle.textContent = p.name;
    if (mSubtitle) mSubtitle.textContent = p.sub;
    if (mOverview) mOverview.textContent = p.overview;
    if (mDuration) mDuration.textContent = p.duration;
    if (mRole) mRole.textContent = p.role;
    if (mStatus) mStatus.textContent = p.status;

    if (mTechGrid) {
      mTechGrid.innerHTML = p.tags.map(t => `<span class="bp-tech-pill">${t}</span>`).join('');
    }

    if (mFeaturesList) {
      mFeaturesList.innerHTML = p.features.map(f => `
        <div class="bp-feature-item">
          <span class="bp-feature-icon">✓</span>
          <span>${f}</span>
        </div>
      `).join('');
    }

    if (mLink) mLink.href = p.link;
    if (mGhLink) mGhLink.href = p.gh;

    const perfBar = document.getElementById('mPerfBar');
    const qualityBar = document.getElementById('mQualityBar');
    const bestBar = document.getElementById('mBestBar');
    const accessBar = document.getElementById('mAccessBar');

    const perfVal = document.getElementById('mPerfVal');
    const qualityVal = document.getElementById('mQualityVal');
    const bestVal = document.getElementById('mBestVal');
    const accessVal = document.getElementById('mAccessVal');

    if (perfVal) perfVal.textContent = p.metrics.perf + '%';
    if (qualityVal) qualityVal.textContent = p.metrics.quality;
    if (bestVal) bestVal.textContent = p.metrics.best + '%';
    if (accessVal) accessVal.textContent = p.metrics.access + '%';

    if (perfBar) perfBar.style.width = '0%';
    if (qualityBar) qualityBar.style.width = '0%';
    if (bestBar) bestBar.style.width = '0%';
    if (accessBar) accessBar.style.width = '0%';

    setTimeout(() => {
      if (perfBar) perfBar.style.width = p.metrics.perf + '%';
      if (qualityBar) qualityBar.style.width = p.metrics.qualityBar + '%';
      if (bestBar) bestBar.style.width = p.metrics.best + '%';
      if (accessBar) accessBar.style.width = p.metrics.access + '%';
    }, 120);

    switchBlueprintTab(activeTab);
  }

  function switchBlueprintTab(tabType) {
    activeTab = tabType;
    const btnSys = document.getElementById('btnTabSys');
    const btnDb = document.getElementById('btnTabDb');
    const btnImg = document.getElementById('btnTabImg');

    if (btnSys) btnSys.classList.toggle('active', tabType === 'layout');
    if (btnDb) btnDb.classList.toggle('active', tabType === 'db');
    if (btnImg) btnImg.classList.toggle('active', tabType === 'img');

    const viewport = document.getElementById('bpViewport');
    const p = projects[currentModalIdx];
    if (!viewport || !p) return;

    if (tabType === 'layout') {
      viewport.innerHTML = generateSystemLayoutSVG(p);
    } else if (tabType === 'db') {
      viewport.innerHTML = generateDatabaseSchemaSVG(p);
    } else if (tabType === 'img') {
      viewport.innerHTML = `<img src="${p.img}" class="bp-image-preview" alt="${p.name} Real World Preview" />`;
    }
  }

  function setupModalHandlers() {
    const closeBtn = document.getElementById('modalClose');
    if (closeBtn) closeBtn.addEventListener('click', closeModal);

    if (modalOverlay) {
      modalOverlay.addEventListener('click', (e) => {
        if (e.target === modalOverlay) closeModal();
      });
    }

    const btnSys = document.getElementById('btnTabSys');
    const btnDb = document.getElementById('btnTabDb');
    const btnImg = document.getElementById('btnTabImg');

    if (btnSys) btnSys.addEventListener('click', () => switchBlueprintTab('layout'));
    if (btnDb) btnDb.addEventListener('click', () => switchBlueprintTab('db'));
    if (btnImg) btnImg.addEventListener('click', () => switchBlueprintTab('img'));

    const resBtns = document.querySelectorAll('.bp-res-btn');
    const viewportOuter = document.querySelector('.bp-viewport-outer');
    const coordH = document.querySelector('.bp-coord-h');

    resBtns.forEach((btn) => {
      btn.addEventListener('click', () => {
        resBtns.forEach(b => b.classList.remove('active'));
        btn.classList.add('active');
        const res = btn.dataset.res;

        if (viewportOuter) {
          if (res === '1200') {
            viewportOuter.style.maxWidth = '1200px';
            if (coordH) coordH.textContent = '1200px [DESKTOP]';
          } else if (res === '800') {
            viewportOuter.style.maxWidth = '800px';
            if (coordH) coordH.textContent = '800px [TABLET]';
          } else if (res === '375') {
            viewportOuter.style.maxWidth = '375px';
            if (coordH) coordH.textContent = '375px [MOBILE]';
          }
        }
      });
    });

    document.addEventListener('keydown', (e) => {
      if (!modalOpen) return;
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

  // ── 9. HIGH-PRECISION DRAFTING CURSOR (RED GLOW) ──
  function initCustomCursor() {
    if (isTouchDevice || prefersReducedMotion) return;

    const curDot = document.getElementById('cur-dot');
    const curRing = document.getElementById('cur-ring');
    if (!curDot || !curRing) return;

    let mouseX = -100, mouseY = -100;
    let ringX = -100, ringY = -100;

    window.addEventListener('mousemove', (e) => {
      mouseX = e.clientX;
      mouseY = e.clientY;
      curDot.style.left = `${mouseX}px`;
      curDot.style.top = `${mouseY}px`;
    });

    function renderCursor() {
      ringX += (mouseX - ringX) * 0.16;
      ringY += (mouseY - ringY) * 0.16;
      curRing.style.left = `${ringX.toFixed(2)}px`;
      curRing.style.top = `${ringY.toFixed(2)}px`;
      requestAnimationFrame(renderCursor);
    }
    requestAnimationFrame(renderCursor);

    const hoverTargets = document.querySelectorAll('a, button, input, .project-bento-card, .filter-tag-btn');
    hoverTargets.forEach((el) => {
      el.addEventListener('mouseenter', () => {
        if (!document.body.classList.contains('cursor-view')) {
          document.body.classList.add('cursor-hover');
        }
      });
      el.addEventListener('mouseleave', () => {
        document.body.classList.remove('cursor-hover');
      });
    });
  }

  // ── 10. SMOOTH PAGE EXIT TRANSITION ──
  function initPageExitTransition() {
    const veil = document.getElementById('page-exit-veil');
    if (!veil || prefersReducedMotion) return;

    document.querySelectorAll('a[href]:not([target="_blank"]):not([href^="#"]):not([href^="mailto:"]):not([href^="tel:"])').forEach((link) => {
      link.addEventListener('click', (e) => {
        const dest = link.getAttribute('href');
        if (!dest || dest === '#' || dest === window.location.pathname) return;

        e.preventDefault();
        gsap.to(veil, {
          y: '0%',
          opacity: 1,
          duration: 0.45,
          ease: 'expo.inOut',
          onComplete: () => {
            window.location.href = dest;
          }
        });
      });
    });
  }

  // ── 11. INITIALIZATION ──
  function init() {
    const savedTheme = localStorage.getItem('theme') || 'dark';
    applyTheme(savedTheme);

    initLenis();
    initCustomCursor();
    initNavbar();
    initShowcaseGrid();
    setupModalHandlers();
    initPageExitTransition();
    initPreloader();
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();
