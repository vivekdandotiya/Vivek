// Standalone High-Performance ScrollExpand Animation Engine for Vanilla JS
(function() {
  function initScrollExpand() {
    const root = document.getElementById('scrollExpandHero');
    if (!root) return;

    const track = root.querySelector('.scroll-expand__track');
    const stage = root.querySelector('.scroll-expand__stage');
    const frame = root.querySelector('.scroll-expand__frame');
    const media = root.querySelector('.scroll-expand__media');
    const header = root.querySelector('.scroll-expand__header');

    if (!track || !stage || !frame || !media) return;

    const clamp = (v, a, b) => (v < a ? a : v > b ? b : v);
    const smoothstep = (edge0, edge1, x) => {
      const t = clamp((x - edge0) / (edge1 - edge0 || 1e-6), 0, 1);
      return t * t * (3 - 2 * t);
    };

    const config = {
      startTop: 54,
      startSide: 35,
      startBottom: 8,
      startRadius: 20,
      endRadius: 0,
      mediaZoom: 1.35,
      scrollDistance: 1.0,
      holdDistance: 0.25,
      smoothing: 0.08
    };

    let current = 0;
    let target = 0;
    let stageH = 0;
    let running = false;
    let raf = 0;

    function applyProgress(p) {
      const e = smoothstep(0, 1, p);

      if (e >= 0.998) {
        frame.style.clipPath = 'none';
        frame.style.borderRadius = '0px';
      } else {
        const topInset = config.startTop * (1 - e);
        const botInset = config.startBottom * (1 - e);
        const sideInset = config.startSide * (1 - e);
        const r = config.startRadius * (1 - e);

        frame.style.clipPath = `inset(${topInset.toFixed(3)}% ${sideInset.toFixed(3)}% ${botInset.toFixed(3)}% ${sideInset.toFixed(3)}% round ${r.toFixed(1)}px)`;
        frame.style.borderRadius = `${r.toFixed(1)}px`;
      }

      media.style.transform = `scale(${(config.mediaZoom + (1 - config.mediaZoom) * e).toFixed(4)})`;

      if (header) {
        const fade = smoothstep(0, 0.4, p);
        header.style.opacity = `${(1 - fade).toFixed(3)}`;
        header.style.transform = `translate3d(0, ${(-50 * fade).toFixed(2)}px, 0)`;
      }
    }

    function measure() {
      stageH = window.innerHeight;
      if (stageH <= 0) return;
      stage.style.height = `${stageH}px`;
      track.style.height = `${stageH * (1 + config.scrollDistance + config.holdDistance)}px`;
    }

    function readProgress() {
      const rect = track.getBoundingClientRect();
      const scrollOffset = -rect.top;
      const span = stageH * Math.max(0.01, config.scrollDistance);
      return clamp(scrollOffset / span, 0, 1);
    }

    function tick() {
      const k = config.smoothing <= 0 ? 1 : 1 - Math.exp(-1 / (60 * config.smoothing));
      current += (target - current) * k;

      if (Math.abs(target - current) < 0.0003) {
        current = target;
        running = false;
      }

      applyProgress(current);

      if (running) {
        raf = requestAnimationFrame(tick);
      } else {
        raf = 0;
      }
    }

    function kick() {
      if (running) return;
      running = true;
      if (!raf) raf = requestAnimationFrame(tick);
    }

    function onScroll() {
      target = readProgress();
      kick();
    }

    function onResize() {
      measure();
      target = readProgress();
      current = target;
      applyProgress(current);
    }

    measure();
    target = readProgress();
    current = target;
    applyProgress(current);

    window.addEventListener('scroll', onScroll, { passive: true });
    window.addEventListener('resize', onResize);
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initScrollExpand);
  } else {
    initScrollExpand();
  }
})();
