// Standalone High-Performance ScrollExpand Animation Engine for Vanilla JS
(function() {
  function initScrollExpand() {
    const root = document.getElementById('scrollExpandHero');
    if (!root) return;

    const track = root.querySelector('.scroll-expand__track');
    const stage = root.querySelector('.scroll-expand__stage');
    const frame = root.querySelector('.scroll-expand__frame');
    const media = root.querySelector('.scroll-expand__media');
    const title = root.querySelector('.scroll-expand__title');
    const overlay = root.querySelector('.scroll-expand__overlay');
    const scrim = root.querySelector('.scroll-expand__scrim');
    const hint = root.querySelector('.scroll-expand__hint');

    if (!track || !stage || !frame || !media) return;

    const clamp = (v, a, b) => (v < a ? a : v > b ? b : v);
    const smoothstep = (edge0, edge1, x) => {
      const t = clamp((x - edge0) / (edge1 - edge0 || 1e-6), 0, 1);
      return t * t * (3 - 2 * t);
    };

    const config = {
      startWidth: 24,
      startHeight: 36,
      startRadius: 24,
      endRadius: 0,
      mediaZoom: 1.35,
      scrollDistance: 1.0,
      holdDistance: 0.25,
      smoothing: 0.08,
      overlayScrim: 0.65
    };

    let current = 0;
    let target = 0;
    let stageH = 0;
    let running = false;
    let raf = 0;

    function applyProgress(p) {
      const e = smoothstep(0, 1, p);

      const w = config.startWidth + (100 - config.startWidth) * e;
      const h = config.startHeight + (100 - config.startHeight) * e;
      const ix = Math.max(0, (100 - w) / 2);
      const iy = Math.max(0, (100 - h) / 2);
      const r = config.startRadius + (config.endRadius - config.startRadius) * e;

      if (e >= 0.998) {
        frame.style.clipPath = 'none';
        frame.style.borderRadius = '0px';
      } else {
        frame.style.clipPath = `inset(${iy.toFixed(3)}% ${ix.toFixed(3)}% ${iy.toFixed(3)}% ${ix.toFixed(3)}% round ${r.toFixed(1)}px)`;
        frame.style.borderRadius = `${r.toFixed(1)}px`;
      }

      media.style.transform = `scale(${(config.mediaZoom + (1 - config.mediaZoom) * e).toFixed(4)})`;

      if (scrim) scrim.style.opacity = `${(config.overlayScrim * e).toFixed(3)}`;

      if (title) {
        const out = smoothstep(0.32, 0.82, p);
        title.style.opacity = `${(1 - out).toFixed(3)}`;
        title.style.transform = `translate3d(0, ${(-32 * out).toFixed(2)}px, 0) scale(${(1 + 0.06 * out).toFixed(3)})`;
      }

      if (hint) {
        const gone = smoothstep(0, 0.15, p);
        hint.style.opacity = `${(1 - gone).toFixed(3)}`;
        hint.style.transform = `translate3d(0, ${(12 * gone).toFixed(2)}px, 0)`;
      }

      if (overlay) {
        const inn = smoothstep(0.65, 0.98, p);
        overlay.style.opacity = `${inn.toFixed(3)}`;
        overlay.style.transform = `translate3d(0, ${(20 * (1 - inn)).toFixed(2)}px, 0)`;
      }
    }

    function measure() {
      stageH = window.innerHeight;
      if (stageH <= 0) return;
      stage.style.height = `${stageH}px`;
      track.style.height = `${stageH * (1 + config.scrollDistance + config.holdDistance)}px`;

      const w = root.clientWidth || window.innerWidth;
      stage.style.setProperty('--se-title-size', `${clamp(w * 0.065, 24, 76)}px`);
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
