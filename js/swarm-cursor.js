// Standalone High-Performance Swarm Cursor & Organic Fluid Trail Engine
(function() {
  function initSwarmCursor() {
    if (window.matchMedia('(prefers-reduced-motion: reduce)').matches) return;

    let canvas = document.getElementById('swarm-cursor-canvas');
    if (!canvas) {
      canvas = document.createElement('canvas');
      canvas.id = 'swarm-cursor-canvas';
      canvas.style.cssText = 'position:fixed;top:0;left:0;width:100vw;height:100vh;pointer-events:none;z-index:9999;display:block;';
      document.body.appendChild(canvas);
    }

    const ctx = canvas.getContext('2d');
    let width = (canvas.width = window.innerWidth);
    let height = (canvas.height = window.innerHeight);

    let mouseX = width / 2;
    let mouseY = height / 2;
    let targetMouseX = mouseX;
    let targetMouseY = mouseY;
    let isHovering = false;

    window.addEventListener('resize', () => {
      width = canvas.width = window.innerWidth;
      height = canvas.height = window.innerHeight;
    });

    window.addEventListener('mousemove', (e) => {
      targetMouseX = e.clientX;
      targetMouseY = e.clientY;
    });

    document.addEventListener('mouseover', (e) => {
      if (e.target.closest('a, button, input, select, textarea, .btn, [role="button"], .interactive-card')) {
        isHovering = true;
      }
    });

    document.addEventListener('mouseout', (e) => {
      if (e.target.closest('a, button, input, select, textarea, .btn, [role="button"], .interactive-card')) {
        isHovering = false;
      }
    });

    // Swarm particles
    const COUNT = 16;
    const particles = [];
    const colors = ['rgba(184, 255, 87, ', 'rgba(124, 58, 237, ', 'rgba(6, 182, 212, '];

    for (let i = 0; i < COUNT; i++) {
      particles.push({
        x: mouseX,
        y: mouseY,
        vx: (Math.random() - 0.5) * 4,
        vy: (Math.random() - 0.5) * 4,
        history: [],
        length: 12 + Math.floor(Math.random() * 8),
        color: colors[i % colors.length],
        speedFactor: 0.04 + (i / COUNT) * 0.045,
        offset: Math.random() * Math.PI * 2
      });
    }

    function render(t) {
      ctx.clearRect(0, 0, width, height);

      // Smooth mouse spring
      mouseX += (targetMouseX - mouseX) * 0.15;
      mouseY += (targetMouseY - mouseY) * 0.15;

      const time = t * 0.002;

      particles.forEach((p, idx) => {
        const angle = time * 2.5 + p.offset;
        const radius = isHovering ? 28 + Math.sin(angle * 1.5) * 10 : 12 + Math.sin(angle) * 6;

        const tx = mouseX + Math.cos(angle) * radius;
        const ty = mouseY + Math.sin(angle) * radius;

        p.vx += (tx - p.x) * p.speedFactor;
        p.vy += (ty - p.y) * p.speedFactor;

        p.vx *= 0.82;
        p.vy *= 0.82;

        p.x += p.vx;
        p.y += p.vy;

        p.history.unshift({ x: p.x, y: p.y });
        if (p.history.length > p.length) {
          p.history.pop();
        }

        if (p.history.length > 2) {
          ctx.beginPath();
          ctx.moveTo(p.history[0].x, p.history[0].y);

          for (let i = 1; i < p.history.length - 1; i++) {
            const xc = (p.history[i].x + p.history[i + 1].x) / 2;
            const yc = (p.history[i].y + p.history[i + 1].y) / 2;
            ctx.quadraticCurveTo(p.history[i].x, p.history[i].y, xc, yc);
          }

          const alpha = isHovering ? 0.65 : 0.40;
          ctx.strokeStyle = `${p.color}${alpha})`;
          ctx.lineWidth = isHovering ? 2.4 : 1.6;
          ctx.lineCap = 'round';
          ctx.stroke();
        }
      });

      requestAnimationFrame(render);
    }

    requestAnimationFrame(render);
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initSwarmCursor);
  } else {
    initSwarmCursor();
  }
})();
