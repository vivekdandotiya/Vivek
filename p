<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Work — Vivek Dandotiya</title>
<meta name="description" content="Explore featured web design projects, full-stack applications, and interactive digital work built by Vivek Dandotiya.">
<meta property="og:title" content="Work & Portfolio — Vivek Dandotiya">
<meta property="og:description" content="Selected projects showcase by web designer and developer Vivek Dandotiya.">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display:ital@0;1&family=Inter:wght@300;400;500;600;700;800;900&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
<style>
*,*::before,*::after{margin:0;padding:0;box-sizing:border-box;}
:root{
  --grid-line: rgba(255, 255, 255, 0.095);--bg:#0a0a0a;--surface:#111;--surface2:#161616;--border:#1f1f1f;--border2:#2a2a2a;--text:#fff;--text2:#a0a0a0;--text3:#555;--accent:#b8ff57;--radius:16px;}
html{scroll-behavior:smooth;}
@keyframes gridMove {
  0% {
    background-position: 0 0, 0 0;
  }
  100% {
    background-position: 120px 120px, 120px 120px;
  }
}

body{font-family:'Inter',sans-serif;background:var(--bg);color:var(--text);overflow-x:hidden;cursor:none;
  background-image: linear-gradient(var(--grid-line) 1px, transparent 1px), linear-gradient(90deg, var(--grid-line) 1px, transparent 1px);
  background-size: 120px 120px;
  animation: gridMove 25s linear infinite;}
#cur{position:fixed;width:8px;height:8px;background:var(--accent);border-radius:50%;pointer-events:none;z-index:99999;transform:translate(-50%,-50%);}
#cur-ring{position:fixed;width:36px;height:36px;border:1px solid rgba(255,255,255,.3);border-radius:50%;pointer-events:none;z-index:99998;transform:translate(-50%,-50%);transition:width .35s,height .35s,border-color .3s;}
body:has(a:hover) #cur-ring,body:has(button:hover) #cur-ring{width:52px;height:52px;border-color:rgba(255,255,255,.6);}
/* FLAME FOOTER DESIGN */
.footer-section {
  position: relative;
  background: #ffffff !important;
  color: #000000 !important;
  padding-top: 0;
  overflow: hidden;
  font-family: 'Inter', sans-serif;
  margin-top: 0;
}

.flame-divider-svg {
  width: 100%;
  height: 120px;
  display: block;
  background: var(--bg, #0a0a0a);
  fill: #ffffff;
}

.footer-main-content {
  padding: 4rem 4rem 2rem 4rem;
  display: flex;
  flex-direction: column;
  gap: 4rem;
  max-width: 1400px;
  margin: 0 auto;
}

.footer-cta-box {
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
  gap: 1.5rem;
}

.flame-mascot {
  width: 80px;
  height: 80px;
  background: #000000;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
}

.flame-mascot svg {
  width: 44px;
  height: 44px;
  fill: #ffffff;
}

.flame-heading {
  font-family: 'Space Grotesk', 'Inter', sans-serif;
  font-size: clamp(2rem, 4.5vw, 3.8rem);
  font-weight: 800;
  letter-spacing: -0.02em;
  line-height: 1.15;
  color: #000000 !important;
}

.btn-chat-cta {
  font-family: 'Space Grotesk', sans-serif;
  font-size: 0.95rem;
  font-weight: 700;
  letter-spacing: 0.08em;
  color: #ffffff !important;
  background: #000000;
  padding: 1rem 2.8rem;
  border-radius: 999px;
  text-decoration: none;
  transition: all 0.3s ease;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.25);
  display: inline-block;
}

.btn-chat-cta:hover {
  transform: translateY(-3px) scale(1.03);
  background: #1a1a1a;
  box-shadow: 0 15px 40px rgba(0, 0, 0, 0.4);
}

.footer-links-grid {
  display: flex;
  justify-content: space-between;
  align-items: flex-end;
  padding-top: 3rem;
  border-top: 1px solid rgba(0, 0, 0, 0.12);
}

.footer-nav-col {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

.footer-nav-title {
  font-family: 'Space Grotesk', monospace, sans-serif;
  font-size: 0.75rem;
  letter-spacing: 0.2em;
  text-transform: uppercase;
  color: #666666;
}

.footer-nav-list {
  display: flex;
  gap: 1.5rem;
  list-style: none;
  padding: 0;
  margin: 0;
  flex-wrap: wrap;
}

.footer-nav-list a {
  color: #000000 !important;
  text-decoration: none;
  font-weight: 600;
  font-size: 0.95rem;
  transition: color 0.2s ease;
}

.footer-nav-list a:hover {
  color: #555555 !important;
}

.footer-social-list {
  display: flex;
  gap: 0.8rem;
  list-style: none;
  padding: 0;
  margin: 0;
}

.social-pill {
  width: 42px;
  height: 42px;
  border-radius: 50%;
  border: 1px solid #000000;
  display: flex;
  align-items: center;
  justify-content: center;
  font-family: 'Space Grotesk', monospace, sans-serif;
  font-size: 0.75rem;
  font-weight: 700;
  color: #000000 !important;
  text-decoration: none;
  transition: all 0.25s ease;
}

.social-pill:hover {
  background: #000000;
  color: #ffffff !important;
}

.footer-watermark {
  font-family: 'Space Grotesk', 'Inter', sans-serif;
  font-size: clamp(4rem, 15vw, 16rem);
  font-weight: 900;
  letter-spacing: -0.04em;
  line-height: 0.8;
  color: rgba(0, 0, 0, 0.07) !important;
  text-align: center;
  user-select: none;
  pointer-events: none;
  margin-top: 2rem;
  text-transform: uppercase;
}

nav{position:fixed;top:0;left:0;right:0;z-index:500;display:flex;align-items:center;justify-content:space-between;padding:0 2.5rem;height:64px;background:rgba(10,10,10,.85);backdrop-filter:blur(20px);border-bottom:1px solid var(--border);}
.nav-brand{display:flex;align-items:center;gap:.8rem;text-decoration:none;}
.nav-logo{font-family:'Space Grotesk',sans-serif;font-size:1.3rem;font-weight:700;color:#fff;}
.nav-tagline{display:flex;flex-direction:column;line-height:1.1;}
.nav-tagline span{font-size:.52rem;letter-spacing:.2em;text-transform:uppercase;color:var(--text3);}
.nav-tagline span.green{color:var(--accent);}
.nav-center{display:flex;align-items:center;gap:.25rem;background:var(--surface);border:1px solid var(--border2);border-radius:999px;padding:.3rem;}
.nav-center a{font-size:.78rem;padding:.45rem 1.1rem;border-radius:999px;color:var(--text2);text-decoration:none;transition:background .2s,color .2s;}
.nav-center a:hover{color:#fff;}
.nav-center a.active{background:#fff;color:#000;font-weight:600;}
.btn-hire{font-size:.78rem;font-weight:600;background:#fff;color:#000;padding:.5rem 1.2rem;border-radius:999px;text-decoration:none;}
.ham{display:none;flex-direction:column;gap:4px;cursor:none;background:none;border:none;padding:.5rem;}
.ham span{width:20px;height:1.5px;background:#fff;display:block;}
.mob-nav{position:fixed;inset:0;z-index:490;background:rgba(10,10,10,.98);backdrop-filter:blur(30px);display:flex;flex-direction:column;justify-content:center;align-items:center;gap:2rem;transform:translateY(-100%);transition:transform .5s cubic-bezier(.16,1,.3,1);}
.mob-nav.open{transform:translateY(0);}
.mob-nav a{font-family:'Space Grotesk',sans-serif;font-size:3.5rem;font-weight:700;color:#fff;text-decoration:none;letter-spacing:-.03em;}




/* SECTION WRAPPERS */
.sec-intro, .sec-stack, .sec-cylinder {
  min-height: 100vh;
  width: 100vw;
  position: relative;
  overflow: hidden;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 6rem 2rem;
  border-bottom: 1px solid var(--border);
}

/* SECTION 1: HERO INTRO */
.intro-grid {
  display: grid;
  grid-template-columns: 1.15fr 0.85fr;
  gap: 4rem;
  max-width: 1280px;
  width: 100%;
  align-items: center;
  position: relative;
  z-index: 10;
}
.intro-left {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 1.5rem;
}
.intro-left h1 {
  font-size: clamp(2.5rem, 6vw, 4.6rem);
  font-weight: 900;
  letter-spacing: -.04em;
  line-height: 1.05;
}
.intro-left h1 em {
  font-family: 'DM Serif Display', serif;
  font-style: italic;
  font-weight: 400;
  color: var(--accent);
}
.intro-left p {
  font-size: 0.95rem;
  color: var(--text2);
  line-height: 1.8;
  max-width: 540px;
}
.intro-btn {
  background: var(--accent);
  color: #000;
  border: none;
  font-family: 'Space Grotesk', sans-serif;
  font-weight: 700;
  font-size: 0.85rem;
  padding: 0.8rem 2.2rem;
  border-radius: 99px;
  text-decoration: none;
  cursor: none;
  transition: all 0.3s ease;
  box-shadow: 0 10px 25px rgba(184, 255, 87, 0.25);
}
.intro-btn:hover {
  transform: translateY(-3px);
  box-shadow: 0 15px 30px rgba(184, 255, 87, 0.4);
}

.intro-right {
  position: relative;
  height: 480px;
  display: flex;
  align-items: center;
  justify-content: center;
}
.hero-outline-text {
  position: absolute;
  font-family: 'Inter', sans-serif;
  font-weight: 900;
  font-size: clamp(8rem, 16vw, 15rem);
  -webkit-text-stroke: 1px rgba(255, 255, 255, 0.04);
  color: transparent;
  pointer-events: none;
  z-index: 1;
  text-transform: uppercase;
  letter-spacing: 0.05em;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
.hero-visual-pedestal {
  position: relative;
  z-index: 2;
  width: 320px;
  height: 240px;
  background: rgba(20, 20, 25, 0.55);
  border: 1px solid rgba(255, 255, 255, 0.1);
  border-radius: 18px;
  backdrop-filter: blur(15px);
  box-shadow: 
    0 30px 60px rgba(0,0,0,0.6),
    inset 0 1px 0 rgba(255,255,255,0.08);
  display: flex;
  align-items: center;
  justify-content: center;
  transform: rotateY(-15deg) rotateX(10deg);
  transform-style: preserve-3d;
  transition: transform 0.5s ease;
}
.hero-visual-pedestal:hover {
  transform: rotateY(-5deg) rotateX(5deg) translateY(-10px);
}
.pedestal-mockup {
  width: 90%;
  height: 90%;
  background: url('images/varta_mockup.png') center/cover;
  border-radius: 12px;
  box-shadow: 0 10px 20px rgba(0,0,0,0.4);
  transform: translateZ(20px);
}

/* SECTION 2: CARDS STACK */
.stack-header {
  text-align: center;
  margin-bottom: 2rem;
  position: relative;
  z-index: 10;
}
.stack-header .eyebrow {
  font-size: .65rem;
  letter-spacing: .25em;
  text-transform: uppercase;
  color: var(--text3);
  margin-bottom: .5rem;
}
.stack-header h2 {
  font-size: clamp(2rem, 5vw, 3.5rem);
  font-weight: 800;
  letter-spacing: -.04em;
  line-height: 1.05;
  margin-bottom: .5rem;
}
.stack-header h2 em {
  font-family: 'DM Serif Display', serif;
  font-style: italic;
  font-weight: 400;
  color: var(--accent);
}
.stack-header .sub {
  font-size: .82rem;
  color: var(--text2);
  max-width: 600px;
  margin: 0 auto;
}

.sec-stack {
  position: relative;
  height: 200vh; /* scroll distance (larger value = slower speed) */
  width: 100vw;
  background: transparent;
  border-bottom: 1px solid var(--border);
  padding: 0;
}
.sec-stack-sticky {
  position: sticky;
  top: 0;
  height: 100vh;
  width: 100vw;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  overflow: hidden;
  padding: 4rem 2rem;
}
.stack-track-container {
  position: relative;
  width: 100%;
  height: 420px;
  margin-top: 2rem;
  display: flex;
  align-items: center;
  justify-content: center;
}
.stack-track {
  display: flex;
  gap: 40px;
  position: absolute;
  left: 50%;
  transform: translateX(-120vw);
  will-change: transform;
}
.horizontal-card {
  flex-shrink: 0;
  width: 190px;
  height: 280px;
  border-radius: 18px;
  background: var(--surface);
  border: 1px solid rgba(255, 255, 255, 0.08);
  box-shadow: 0 12px 35px rgba(0,0,0,0.55);
  background-size: cover;
  background-position: center;
  position: relative;
  overflow: hidden;
  border-radius: 18px;
  background: var(--surface);
  border: 1px solid rgba(255, 255, 255, 0.12);
  box-shadow: 0 12px 35px rgba(0,0,0,0.55);
  background-size: cover;
  background-position: center;
  position: relative;
  overflow: hidden;
  filter: brightness(0.9) contrast(1.05);
  transition: 
    filter 0.5s ease,
    border-color 0.3s ease, 
    box-shadow 0.3s ease, 
    transform 0.4s cubic-bezier(0.16, 1, 0.3, 1);
  cursor: none;
}
.horizontal-card-glow {
  position: absolute;
  inset: 0;
  background: radial-gradient(circle at 50% 120%, rgba(184, 255, 87, 0.25), transparent 70%);
  opacity: 0;
  transition: opacity 0.3s ease;
}
.h-card-overlay {
  position: absolute;
  inset: 0;
  background: linear-gradient(to top, rgba(5, 8, 16, 0.92) 0%, rgba(5, 8, 16, 0.3) 50%, transparent 100%);
  padding: 1.5rem;
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
  gap: 0.4rem;
  opacity: 0.85;
  transition: opacity 0.3s ease, transform 0.3s ease;
}
.horizontal-card:hover .h-card-overlay {
  opacity: 1;
  transform: translateY(-4px);
}
.h-card-tag {
  font-family: 'Space Grotesk', sans-serif;
  font-size: 0.6rem;
  font-weight: 700;
  letter-spacing: 0.12em;
  text-transform: uppercase;
  color: var(--accent, #b8ff57);
  background: rgba(184, 255, 87, 0.15);
  border: 1px solid rgba(184, 255, 87, 0.35);
  padding: 0.2rem 0.6rem;
  border-radius: 4px;
  width: fit-content;
}
.h-card-title {
  font-family: 'Space Grotesk', sans-serif;
  font-size: 1.15rem;
  font-weight: 700;
  color: #fff;
}
.h-card-desc {
  font-size: 0.75rem;
  color: rgba(255, 255, 255, 0.7);
  line-height: 1.35;
}
.horizontal-card:hover {
  filter: brightness(1) contrast(1.1);
  border-color: var(--accent, #b8ff57);
  box-shadow: 0 22px 50px rgba(184, 255, 87, 0.3), 0 0 25px rgba(184, 255, 87, 0.2);
  transform: scale(1.08) translateY(-14px) !important;
  z-index: 10;
}
.horizontal-card:hover .horizontal-card-glow {
  opacity: 1;
}

/* Stagger card heights and angles for visual curve (9 cards) */
.horizontal-card:nth-child(1) { transform: rotate(-8deg) translateY(30px); }
.horizontal-card:nth-child(2) { transform: rotate(-6deg) translateY(15px); }
.horizontal-card:nth-child(3) { transform: rotate(-4deg) translateY(5px); }
.horizontal-card:nth-child(4) { transform: rotate(-2deg) translateY(0px); }
.horizontal-card:nth-child(5) { transform: rotate(0deg) translateY(0px); }
.horizontal-card:nth-child(6) { transform: rotate(2deg) translateY(0px); }
.horizontal-card:nth-child(7) { transform: rotate(4deg) translateY(5px); }
.horizontal-card:nth-child(8) { transform: rotate(6deg) translateY(15px); }
.horizontal-card:nth-child(9) { transform: rotate(8deg) translateY(30px); }

/* SECTION 3: CYLINDER GRID WALL OVERRIDES */
.sec-cylinder {
  padding-top: 2.5rem;
  padding-bottom: 4rem;
  min-height: 100vh;
  justify-content: center;
  border-bottom: none;
  background: #060608;
  position: relative;
  z-index: 10;
}
.sec-cylinder .wall-header {
  position: relative;
  margin-bottom: 1.5rem;
  text-align: center;
  z-index: 10;
  pointer-events: auto;
  width: 100%;
}
.sec-cylinder .wall-header .eyebrow {
  font-size: .65rem;
  letter-spacing: .25em;
  text-transform: uppercase;
  color: var(--text3);
  margin-bottom: .5rem;
}
.sec-cylinder .wall-header h2 {
  font-size: clamp(2rem, 5vw, 3.5rem);
  font-weight: 800;
  letter-spacing: -.04em;
  margin-bottom: .5rem;
  line-height: 1.05;
}
.sec-cylinder .wall-header h2 em {
  font-family: 'DM Serif Display', serif;
  font-style: italic;
  font-weight: 400;
  color: var(--accent);
}
.sec-cylinder .wall-header .sub {
  font-size: .82rem;
  color: var(--text2);
  max-width: 600px;
  margin: 0 auto;
}



/* 3D perspectiva viewport */
.wall-perspective-container {
  width: 100vw;
  height: 100vh;
  perspective: 1200px;
  perspective-origin: 50% 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
  overflow: hidden;
  background: transparent;
  z-index: 5;
}
.curved-wall-grid {
  transform-style: preserve-3d;
  position: relative;
  width: 100%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  will-change: transform;
}
.wall-col {
  position: absolute;
  transform-style: preserve-3d;
  display: flex;
  flex-direction: column;
  gap: 2.2rem;
  width: 280px;
  height: 520px;
  justify-content: center;
  align-items: center;
  will-change: transform;
}
.wall-card {
  width: 280px;
  height: 240px;
  background: #111115;
  border: 1px solid rgba(255, 255, 255, 0.07);
  border-radius: 14px;
  overflow: hidden;
  position: relative;
  box-shadow: 0 15px 35px rgba(0,0,0,0.6);
  cursor: none;
  transition: transform 0.45s cubic-bezier(0.16, 1, 0.3, 1), 
              box-shadow 0.45s cubic-bezier(0.16, 1, 0.3, 1), 
              border-color 0.45s cubic-bezier(0.16, 1, 0.3, 1),
              opacity 0.45s cubic-bezier(0.16, 1, 0.3, 1);
  will-change: transform, opacity;
  transform-style: preserve-3d;
}
.wall-card.filtered-out {
  opacity: 0 !important;
  transform: scale(0.01) translateZ(-150px) !important;
  pointer-events: none !important;
}

/* Card Visual Mockup & Info Overlay */
.wall-card-preview {
  width: 100%;
  height: 100%;
  background-size: cover;
  background-position: center;
  transition: transform 0.6s cubic-bezier(0.16, 1, 0.3, 1);
  filter: brightness(0.7) contrast(1.1);
}
.wall-card:hover .wall-card-preview {
  transform: scale(1.1);
  filter: brightness(0.9) contrast(1);
}
.wall-card-glow {
  position: absolute;
  inset: 0;
  background: radial-gradient(circle at 50% 20%, rgba(var(--theme-color-rgb, 184, 255, 87), 0.15), transparent 70%);
  opacity: 0;
  transition: opacity 0.4s ease;
  pointer-events: none;
}
.wall-card:hover .wall-card-glow {
  opacity: 1;
}

/* Card Info Overlay */
.wall-card-overlay {
  position: absolute;
  inset: 0;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  padding: 1.2rem;
  background: linear-gradient(to top, rgba(10, 10, 12, 0.95) 0%, rgba(10, 10, 12, 0.4) 50%, transparent 100%);
  z-index: 2;
  transform: translateZ(1px);
}
.wall-card-top {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.wall-card-badge {
  font-family: 'Space Grotesk', sans-serif;
  font-size: 0.6rem;
  font-weight: 700;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  color: var(--theme-color, var(--accent));
  background: rgba(var(--theme-color-rgb, 184, 255, 87), 0.12);
  border: 1px solid rgba(var(--theme-color-rgb, 184, 255, 87), 0.3);
  padding: 0.25rem 0.6rem;
  border-radius: 4px;
}
.wall-card-num {
  font-family: monospace;
  font-size: 0.7rem;
  color: rgba(255, 255, 255, 0.25);
  font-weight: 600;
}
.wall-card-bottom {
  display: flex;
  flex-direction: column;
  gap: 0.4rem;
}
.wall-card-title {
  font-family: 'Space Grotesk', sans-serif;
  font-size: 1.05rem;
  font-weight: 700;
  color: #fff;
  letter-spacing: -0.02em;
}
.wall-card-desc {
  font-size: 0.72rem;
  color: rgba(255, 255, 255, 0.6);
  line-height: 1.4;
}
.card-btn-bp, .card-btn-demo {
  font-family: 'Space Grotesk', sans-serif;
  font-size: 0.65rem;
  font-weight: 700;
  letter-spacing: 0.05em;
  padding: 0.35rem 0.75rem;
  border-radius: 6px;
  cursor: none;
  transition: all 0.2s cubic-bezier(0.16, 1, 0.3, 1);
  text-decoration: none;
  display: inline-flex;
  align-items: center;
  gap: 0.3rem;
}
.card-btn-bp {
  background: rgba(184, 255, 87, 0.15);
  color: var(--accent, #b8ff57);
  border: 1px solid rgba(184, 255, 87, 0.4);
}
.card-btn-bp:hover {
  background: var(--accent, #b8ff57);
  color: #000;
  box-shadow: 0 0 12px rgba(184, 255, 87, 0.4);
}
.card-btn-demo {
  background: rgba(255, 255, 255, 0.08);
  color: #fff;
  border: 1px solid rgba(255, 255, 255, 0.2);
}
.card-btn-demo:hover {
  background: #fff;
  color: #000;
}

/* Hover tilt popping */
.wall-card:hover {
  transform: translateY(-8px) scale(1.08) translateZ(60px) !important;
  border-color: var(--theme-color, var(--accent));
  box-shadow: 0 25px 50px rgba(0, 0, 0, 0.85), 
              0 0 25px rgba(var(--theme-color-rgb, 184, 255, 87), 0.4);
}

/* BOTTOM PROMPT INPUT BAR */
.prompt-bar-container {
  position: absolute;
  bottom: 2.8rem;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 1rem;
  width: 100%;
  max-width: 720px;
  z-index: 10;
  padding: 0 1.5rem;
}
.prompt-bar {
  width: 100%;
  background: rgba(15, 15, 20, 0.6);
  border: 1px solid rgba(255, 255, 255, 0.08);
  border-radius: 99px;
  padding: 0.4rem 0.5rem 0.4rem 1.4rem;
  display: flex;
  align-items: center;
  gap: 0.8rem;
  backdrop-filter: blur(25px);
  box-shadow: 0 20px 45px rgba(0,0,0,0.4);
}
.prompt-sparkle {
  color: var(--accent);
  font-size: 1rem;
  animation: pulse 2s infinite ease-in-out;
}
.prompt-bar input {
  flex: 1;
  background: none;
  border: none;
  outline: none;
  color: #fff;
  font-family: 'Space Grotesk', sans-serif;
  font-size: 0.82rem;
  width: 100%;
}
.prompt-bar input::placeholder {
  color: rgba(255,255,255,0.3);
}
.prompt-btn {
  background: #fff;
  color: #000;
  border: none;
  font-family: 'Space Grotesk', sans-serif;
  font-weight: 700;
  font-size: 0.78rem;
  padding: 0.6rem 1.4rem;
  border-radius: 99px;
  cursor: none;
  transition: all 0.25s cubic-bezier(0.16, 1, 0.3, 1);
  letter-spacing: 0.02em;
}
.prompt-btn:hover {
  background: var(--accent);
  transform: scale(1.05);
  box-shadow: 0 0 15px rgba(184, 255, 87, 0.5);
}
.prompt-tags {
  display: flex;
  gap: 0.6rem;
}
.prompt-tag {
  background: rgba(255, 255, 255, 0.03);
  border: 1px solid rgba(255, 255, 255, 0.08);
  color: rgba(255, 255, 255, 0.65);
  font-family: 'Space Grotesk', sans-serif;
  font-weight: 600;
  font-size: 0.65rem;
  letter-spacing: 0.08em;
  padding: 0.4rem 1.1rem;
  border-radius: 99px;
  cursor: none;
  transition: all 0.25s cubic-bezier(0.16, 1, 0.3, 1);
}
.prompt-tag:hover, .prompt-tag.active {
  background: rgba(255, 255, 255, 0.1);
  color: #fff;
  border-color: rgba(255, 255, 255, 0.3);
}
.prompt-tag.active {
  background: var(--accent);
  color: #000;
  border-color: var(--accent);
  box-shadow: 0 0 12px rgba(184, 255, 87, 0.3);
}


@keyframes pulse { 0%,100%{opacity:.4} 50%{opacity:1} }

#modal-overlay { position: fixed; inset: 0; z-index: 2000; background: rgba(4,4,6,.9); backdrop-filter: blur(28px); display: flex; align-items: center; justify-content: center; opacity: 0; pointer-events: none; transition: opacity .35s; }
#modal-overlay.open { opacity: 1; pointer-events: all; }
.modal-card {
  background: #030a16;
  background-image: 
    linear-gradient(rgba(0, 242, 254, 0.04) 1px, transparent 1px),
    linear-gradient(90deg, rgba(0, 242, 254, 0.04) 1px, transparent 1px);
  background-size: 20px 20px;
  border: 1px solid rgba(0, 242, 254, 0.25);
  box-shadow: 0 0 40px rgba(0, 242, 254, 0.1), inset 0 0 30px rgba(0, 242, 254, 0.05);
  border-radius: 12px;
  width: 95%;
  max-width: 1280px;
  height: 90vh;
  padding: 2.5rem;
  position: relative;
  transform: translateY(50px) scale(.98);
  transition: transform .5s cubic-bezier(.16,1,.3,1), opacity .5s;
  opacity: 0;
  display: grid;
  grid-template-rows: auto 1fr;
  gap: 1.5rem;
  overflow: hidden;
}
#modal-overlay.open .modal-card {
  transform: translateY(0) scale(1);
  opacity: 1;
}

/* Modal Layout Panels */
.modal-grid-layout {
  display: grid;
  grid-template-columns: 280px 1fr 280px;
  gap: 2rem;
  height: 100%;
  overflow: hidden;
}

/* Panels */
.bp-side-panel {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
  overflow-y: auto;
  padding-right: 0.5rem;
}
.bp-side-panel::-webkit-scrollbar {
  width: 4px;
}
.bp-side-panel::-webkit-scrollbar-thumb {
  background: rgba(0, 242, 254, 0.2);
  border-radius: 2px;
}

/* Headers / labels */
.bp-section-label {
  font-family: 'Space Grotesk', sans-serif;
  font-size: 0.62rem;
  letter-spacing: 0.18em;
  text-transform: uppercase;
  color: var(--accent);
  margin-bottom: 0.5rem;
  display: flex;
  align-items: center;
  gap: 0.5rem;
}
.bp-section-label::before {
  content: '';
  display: inline-block;
  width: 6px;
  height: 6px;
  background: var(--accent);
}

.bp-title {
  font-family: 'Space Grotesk', sans-serif;
  font-weight: 700;
  font-size: 1.6rem;
  color: #fff;
  line-height: 1.2;
}
.bp-subtitle {
  font-family: 'DM Mono', monospace;
  font-size: 0.72rem;
  color: #7dd3fc;
  margin-top: 0.25rem;
}
.bp-overview {
  font-size: 0.75rem;
  color: #94a3b8;
  line-height: 1.7;
}

/* Specs Box */
.bp-specs-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 0.5rem;
  border-top: 1px solid rgba(0, 242, 254, 0.15);
  border-bottom: 1px solid rgba(0, 242, 254, 0.15);
  padding: 1rem 0;
}
.bp-spec-item {
  display: flex;
  flex-direction: column;
  gap: 0.25rem;
}
.bp-spec-lbl {
  font-family: 'Space Grotesk', sans-serif;
  font-size: 0.55rem;
  color: #64748b;
  text-transform: uppercase;
  letter-spacing: 0.1em;
}
.bp-spec-val {
  font-family: 'DM Mono', monospace;
  font-size: 0.68rem;
  color: #e2e8f0;
  font-weight: 500;
}

/* Tech Stack Grid */
.bp-tech-grid {
  display: flex;
  flex-wrap: wrap;
  gap: 0.45rem;
}
.bp-tech-pill {
  font-family: 'DM Mono', monospace;
  font-size: 0.6rem;
  padding: 0.3rem 0.65rem;
  background: rgba(0, 242, 254, 0.03);
  border: 1px solid rgba(0, 242, 254, 0.18);
  border-radius: 4px;
  color: #e2e8f0;
  letter-spacing: 0.05em;
  display: inline-flex;
  align-items: center;
  gap: 0.3rem;
}

/* Features List */
.bp-features-list {
  display: flex;
  flex-direction: column;
  gap: 0.65rem;
}
.bp-feature-item {
  display: flex;
  align-items: flex-start;
  gap: 0.6rem;
  font-size: 0.72rem;
  color: #cbd5e1;
  line-height: 1.4;
}
.bp-feature-icon {
  color: #05ffa3;
  font-weight: bold;
  font-size: 0.75rem;
  flex-shrink: 0;
}

/* Links Buttons */
.bp-link-btn {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 0.8rem 1.2rem;
  background: rgba(0, 242, 254, 0.05);
  border: 1px solid rgba(0, 242, 254, 0.25);
  border-radius: 4px;
  color: #fff;
  text-decoration: none;
  font-family: 'Space Grotesk', sans-serif;
  font-size: 0.72rem;
  text-transform: uppercase;
  letter-spacing: 0.1em;
  transition: all 0.25s;
}
.bp-link-btn:hover {
  background: rgba(0, 242, 254, 0.12);
  border-color: rgba(0, 242, 254, 0.6);
  box-shadow: 0 0 12px rgba(0, 242, 254, 0.2);
  transform: translateY(-1px);
}
.bp-link-btn-primary {
  background: rgba(184, 255, 87, 0.1);
  border-color: rgba(184, 255, 87, 0.3);
  color: var(--accent);
}
.bp-link-btn-primary:hover {
  background: rgba(184, 255, 87, 0.18);
  border-color: rgba(184, 255, 87, 0.7);
  box-shadow: 0 0 12px rgba(184, 255, 87, 0.25);
}

/* Metrics panel */
.bp-metrics-panel {
  display: flex;
  flex-direction: column;
  gap: 0.85rem;
}
.bp-metric-row {
  display: flex;
  flex-direction: column;
  gap: 0.3rem;
}
.bp-metric-meta {
  display: flex;
  justify-content: space-between;
  font-family: 'Space Grotesk', sans-serif;
  font-size: 0.65rem;
  color: #94a3b8;
}
.bp-metric-label {
  text-transform: uppercase;
  letter-spacing: 0.05em;
}
.bp-metric-value {
  font-family: 'DM Mono', monospace;
  color: #fff;
  font-weight: bold;
}
.bp-metric-bar-outer {
  width: 100%;
  height: 6px;
  background: rgba(255, 255, 255, 0.05);
  border-radius: 3px;
  overflow: hidden;
  border: 1px solid rgba(0, 242, 254, 0.1);
}
.bp-metric-bar-inner {
  height: 100%;
  width: 0;
  background: linear-gradient(90deg, #00f2fe, #05ffa3);
  border-radius: 3px;
  transition: width 1.2s cubic-bezier(0.25, 1, 0.5, 1);
}

/* Middle Blueprint Canvas Viewport */
.bp-canvas-panel {
  display: flex;
  flex-direction: column;
  gap: 1rem;
  overflow: hidden;
  height: 100%;
}
.bp-viewport-outer {
  flex: 1;
  border: 1px dashed rgba(0, 242, 254, 0.35);
  background: rgba(2, 8, 19, 0.4);
  position: relative;
  border-radius: 4px;
  min-height: 280px;
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
}
/* Corner blueprint crosses */
.bp-corner {
  position: absolute;
  font-family: monospace;
  font-size: 14px;
  color: rgba(0, 242, 254, 0.4);
  pointer-events: none;
}
.bpc-tl { top: 4px; left: 8px; }
.bpc-tr { top: 4px; right: 8px; }
.bpc-bl { bottom: 4px; left: 8px; }
.bpc-br { bottom: 4px; right: 8px; }

/* Grid coordinate marks */
.bp-coord-h {
  position: absolute;
  top: 5px;
  left: 50%;
  transform: translateX(-50%);
  font-family: 'DM Mono', monospace;
  font-size: 0.55rem;
  color: rgba(0, 242, 254, 0.4);
}
.bp-coord-v {
  position: absolute;
  right: 8px;
  top: 50%;
  transform: translateY(-50%) rotate(90deg);
  font-family: 'DM Mono', monospace;
  font-size: 0.55rem;
  color: rgba(0, 242, 254, 0.4);
}

/* Dynamic SVG view scaling */
.bp-svg {
  width: 100%;
  height: 100%;
  max-height: 380px;
}

/* Tab button bar */
.bp-tab-row {
  display: flex;
  justify-content: center;
  gap: 0.8rem;
  background: rgba(0, 242, 254, 0.03);
  padding: 0.4rem;
  border-radius: 4px;
  border: 1px solid rgba(0, 242, 254, 0.12);
}
.bp-tab-btn {
  font-family: 'Space Grotesk', sans-serif;
  font-size: 0.65rem;
  text-transform: uppercase;
  letter-spacing: 0.1em;
  background: none;
  border: 1px solid transparent;
  color: rgba(0, 242, 254, 0.6);
  padding: 0.5rem 1.2rem;
  cursor: none;
  border-radius: 3px;
  transition: all 0.2s;
}
.bp-tab-btn:hover {
  color: rgba(0, 242, 254, 0.9);
  background: rgba(0, 242, 254, 0.05);
}
.bp-tab-btn.active {
  background: rgba(0, 242, 254, 0.1);
  border-color: rgba(0, 242, 254, 0.4);
  color: #00f2fe;
  box-shadow: 0 0 10px rgba(0, 242, 254, 0.15);
}

/* Close & Modal Header */
.bp-modal-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  border-bottom: 1px solid rgba(0, 242, 254, 0.2);
  padding-bottom: 0.8rem;
}
.bp-header-meta {
  font-family: 'DM Mono', monospace;
  font-size: 0.58rem;
  color: rgba(0, 242, 254, 0.5);
  letter-spacing: 0.08em;
  text-transform: uppercase;
}
.bp-close-btn {
  font-family: 'Space Grotesk', sans-serif;
  font-size: 0.68rem;
  text-transform: uppercase;
  letter-spacing: 0.1em;
  background: rgba(239, 68, 68, 0.05);
  border: 1px solid rgba(239, 68, 68, 0.2);
  color: #f87171;
  padding: 0.45rem 1.2rem;
  cursor: none;
  transition: all 0.2s;
  border-radius: 3px;
}
.bp-close-btn:hover {
  background: rgba(239, 68, 68, 0.15);
  border-color: rgba(239, 68, 68, 0.6);
  box-shadow: 0 0 10px rgba(239, 68, 68, 0.2);
}

/* Real-world screenshot styling */
.bp-image-preview {
  width: 90%;
  height: 90%;
  object-fit: contain;
  border: 1px solid rgba(0, 242, 254, 0.3);
  box-shadow: 0 0 20px rgba(0, 242, 254, 0.15);
  background: #01060e;
  border-radius: 4px;
}

/* Media queries for blueprint responsiveness */
@media (max-width: 1024px) {
  .modal-card {
    height: 95vh;
    overflow-y: auto;
  }
  .modal-grid-layout {
    grid-template-columns: 1fr;
    grid-template-rows: auto auto auto;
    gap: 1.5rem;
    overflow: visible;
  }
  .bp-canvas-panel {
    order: -1;
    height: auto;
  }
}


footer{border-top:1px solid var(--border);padding:2rem 2.5rem;display:flex;justify-content:space-between;align-items:center;}
footer span{font-size:.7rem;color:var(--text3);}
.foot-brand{font-family:'Space Grotesk',sans-serif;font-weight:700;font-size:.9rem;color:var(--text3);}
@keyframes fadeUp{from{opacity:0;transform:translateY(24px)}to{opacity:1;transform:translateY(0)}}
.reveal{opacity:0;transform:translateY(20px);transition:opacity .6s ease,transform .6s ease;}
.reveal.in{opacity:1;transform:translateY(0);}
@media(max-width:900px){.projects-grid{grid-template-columns:repeat(2,1fr);}}
@media(max-width:600px){.projects-grid{grid-template-columns:1fr;}.nav-center{display:none;}.ham{display:flex;}.nav-tagline{display:none;}}

/* ── SHOWCASE SECTION ── */
.vs-section{
  padding:7rem 2rem 8rem;
  overflow:hidden;
  border-top:1px solid var(--border);
  position:relative;
  background:radial-gradient(ellipse 80% 60% at 50% 100%,rgba(184,255,87,.04),transparent);
}
.vs-header{text-align:center;margin-bottom:5rem;}
.vs-eyebrow{font-size:.65rem;letter-spacing:.28em;text-transform:uppercase;color:var(--text3);margin-bottom:.7rem;}
.vs-title{
  font-family:'Inter',sans-serif;font-weight:900;
  font-size:clamp(2.8rem,7vw,6rem);
  letter-spacing:-.05em;line-height:1;
}
.vs-title em{font-family:'DM Serif Display',serif;font-style:italic;font-weight:400;color:var(--accent);}
 
/* ── AMBIENT ORBS ── */
.vs-orb{position:absolute;border-radius:50%;filter:blur(80px);pointer-events:none;}
.vs-orb1{width:400px;height:400px;background:rgba(184,255,87,.05);top:10%;left:-80px;}
.vs-orb2{width:350px;height:350px;background:rgba(184,255,87,.04);top:20%;right:-60px;}
 
/* ── STAGE ── */
.vs-stage{
  display:flex;align-items:center;justify-content:center;
  gap:3rem;
  perspective:1400px;
  perspective-origin:50% 40%;
  position:relative;
  min-height:480px;
}
 
/* ── FRAME ── */
.vs-frame{
  display:flex;flex-direction:column;align-items:center;gap:1.5rem;
  flex-shrink:0;
  transition:transform .6s cubic-bezier(.16,1,.3,1);
}
.vs-frame-left{
  transform:rotateY(32deg) rotateX(4deg) translateZ(-60px) scale(.92);
}
.vs-frame-right{
  transform:rotateY(-32deg) rotateX(4deg) translateZ(-60px) scale(.92);
}
.vs-frame-left:hover{
  transform:rotateY(12deg) rotateX(2deg) translateZ(0) scale(.97);
  z-index:2;
}
.vs-frame-right:hover{
  transform:rotateY(-12deg) rotateX(2deg) translateZ(0) scale(.97);
  z-index:2;
}
 
/* ── SCREEN ── */
.vs-screen{
  position:relative;
  width:420px;
}
 
/* ── BEZEL ── */
.vs-bezel{
  width:100%;
  aspect-ratio:16/10;
  background:#0c0c10;
  border-radius:14px;
  border:2px solid #2a2a2a;
  box-shadow:
    0 0 0 1px #111,
    0 30px 80px rgba(0,0,0,.8),
    inset 0 0 40px rgba(0,0,0,.5);
  position:relative;
  overflow:hidden;
  transition:border-color .4s, box-shadow .4s;
}
.vs-frame:hover .vs-bezel{
  border-color:rgba(184,255,87,.35);
  box-shadow:
    0 0 0 1px rgba(184,255,87,.1),
    0 40px 100px rgba(0,0,0,.9),
    0 0 60px rgba(184,255,87,.08),
    inset 0 0 40px rgba(0,0,0,.5);
}
 
/* Camera notch */
.vs-notch{
  position:absolute;top:6px;left:50%;transform:translateX(-50%);
  width:8px;height:8px;border-radius:50%;
  background:#111;border:1px solid #222;
  z-index:3;
}
.vs-notch::after{
  content:'';position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);
  width:4px;height:4px;border-radius:50%;background:#1a2a1a;
}
 
/* Placeholder inside bezel */
.vs-placeholder{
  position:absolute;inset:0;
  display:flex;flex-direction:column;align-items:center;justify-content:center;
  gap:.7rem;
  background:linear-gradient(135deg,#0d0d0d,#141414);
}
.vs-play-ring{
  width:52px;height:52px;border-radius:50%;
  border:1px solid rgba(184,255,87,.3);
  display:flex;align-items:center;justify-content:center;
  font-size:1.1rem;color:rgba(184,255,87,.6);
  transition:all .3s;
  animation:vs-pulse 3s ease infinite;
}
.vs-frame:hover .vs-play-ring{border-color:var(--accent);color:var(--accent);transform:scale(1.1);}
@keyframes vs-pulse{
  0%,100%{box-shadow:0 0 0 0 rgba(184,255,87,.15);}
  50%{box-shadow:0 0 0 10px rgba(184,255,87,0);}
}
.vs-ph-label{font-size:.75rem;font-weight:600;color:#555;}
.vs-ph-hint{font-size:.6rem;color:#333;text-align:center;}
.vs-ph-hint code{color:#444;font-family:monospace;}
 
/* video/iframe inside bezel */
.vs-bezel video,
.vs-bezel iframe{
  position:absolute;inset:0;width:100%;height:100%;
  object-fit:cover;border:none;border-radius:12px;
}
 
/* Scanlines overlay */
.vs-scanlines{
  position:absolute;inset:0;pointer-events:none;z-index:2;
  background:repeating-linear-gradient(
    0deg,transparent,transparent 2px,
    rgba(0,0,0,.06) 2px,rgba(0,0,0,.06) 4px
  );
  opacity:.5;border-radius:12px;
}
 
/* Reflection */
.vs-reflection{
  height:30px;
  background:linear-gradient(to bottom,rgba(184,255,87,.06),transparent);
  border-radius:0 0 14px 14px;
  margin-top:1px;
  filter:blur(2px);
  opacity:.6;
  transition:opacity .4s;
}
.vs-frame:hover .vs-reflection{opacity:1;}
 
/* ── INFO TAG ── */
.vs-tag{
  display:flex;align-items:center;gap:.8rem;
  background:var(--surface);border:1px solid var(--border2);
  border-radius:999px;padding:.55rem 1rem .55rem .65rem;
  width:fit-content;
  transition:border-color .3s,background .3s;
}
.vs-frame:hover .vs-tag{border-color:rgba(184,255,87,.25);background:#161616;}
.vs-tag-num{
  font-family:'Inter',sans-serif;font-weight:900;font-size:.75rem;
  color:transparent;-webkit-text-stroke:1px rgba(184,255,87,.5);
  line-height:1;width:20px;text-align:center;flex-shrink:0;
}
.vs-tag-body{display:flex;flex-direction:column;gap:.1rem;}
.vs-tag-cat{font-size:.5rem;letter-spacing:.16em;text-transform:uppercase;color:var(--text3);}
.vs-tag-title{font-size:.78rem;font-weight:700;color:#fff;letter-spacing:-.01em;}
.vs-tag-btn{
  width:28px;height:28px;border-radius:50%;
  background:var(--accent);color:#000;
  display:flex;align-items:center;justify-content:center;
  font-size:.65rem;font-weight:700;text-decoration:none;
  flex-shrink:0;transition:background .2s,transform .2s;
}
.vs-tag-btn:hover{background:#d0ff6e;transform:rotate(-15deg);}
 
/* ── CENTER TEXT ── */
.vs-center-text{
  display:flex;flex-direction:column;align-items:center;gap:.5rem;
  font-size:.55rem;letter-spacing:.28em;text-transform:uppercase;
  color:var(--text3);flex-shrink:0;user-select:none;
}
.vs-dot-sep{font-size:1rem;color:var(--accent);animation:vs-pulse 3s ease infinite;}
 
/* ── RESPONSIVE ── */
@media(max-width:1100px){
  .vs-screen{width:340px;}
  .vs-stage{gap:2rem;}
}
@media(max-width:850px){
  .vs-stage{flex-direction:column;perspective:none;gap:3rem;}
  .vs-frame-left,.vs-frame-right{transform:none !important;}
  .vs-frame-left:hover,.vs-frame-right:hover{transform:translateY(-4px) !important;}
  .vs-screen{width:100%;max-width:500px;}
  .vs-center-text{flex-direction:row;}/* LIGHT MODE THEME - POLISHED */
[data-theme='light'] {
  --grid-line: rgba(0, 0, 0, 0.08);
  --bg: #ffffff; 
  --surface: #ffffff;
  --surface2: #f8fafc;
  --border: #000000;
  --border2: #000000;
  --text: #000000;
  --text2: #222222;
  --text3: #555555;
  --accent: #16a34a;
}

[data-theme='light'] body {
  background-color: var(--bg);
  background-image: radial-gradient(var(--grid-line) 1.5px, transparent 1.5px);
  background-size: 24px 24px;
}

body.theme-transition, body.theme-transition * {
  transition: background-color 0.4s ease, color 0.4s ease, border-color 0.4s ease, box-shadow 0.4s ease, -webkit-text-stroke 0.4s ease !important;
}

[data-theme='light'] .hero-bg-text, [data-theme='light'] .hero-bg-word { 
  -webkit-text-stroke: 1.5px rgba(0, 0, 0, 0.18); 
  color: rgba(0,0,0,0.015);
}
[data-theme='light'] .hero-sub .line2 { color: #000; }
[data-theme='light'] .hero-corner span { color: #64748b !important; }
[data-theme='light'] .hero-corner strong { color: #0f172a !important; }

[data-theme='light'] nav { background: rgba(255,255,255,0.85); border-bottom: 1px solid rgba(0,0,0,0.06); }
[data-theme='light'] .mob-nav { background: rgba(255,255,255,0.98); }
[data-theme='light'] .nav-logo { color: #000; }
[data-theme='light'] .nav-tagline span { color: #64748b; }
[data-theme='light'] .nav-tagline span.green { color: var(--accent); }
[data-theme='light'] .ham span { background: #000; }
[data-theme='light'] #cur { background: #000; }
[data-theme='light'] #cur-ring { border-color: rgba(0,0,0,0.2); }

[data-theme='light'] .btn-hire, [data-theme='light'] .btn-primary, [data-theme='light'] .btn-connect {
  background: #ffffff !important;
  color: #000000 !important;
  border: 2px solid #000000 !important;
  box-shadow: 3px 3px 0px #000000 !important;
}
[data-theme='light'] .btn-hire:hover, [data-theme='light'] .btn-primary:hover, [data-theme='light'] .btn-connect:hover {
  background: var(--accent) !important;
  color: #000000 !important;
  box-shadow: 4px 4px 0px #000000 !important;
}

[data-theme='light'] .bento-card, 
[data-theme='light'] .proj-card, 
[data-theme='light'] .cert-card, 
[data-theme='light'] .blog-card, 
[data-theme='light'] .timeline-item {
  background: var(--surface);
  border: 2px solid #000000 !important;
  box-shadow: 6px 6px 0px #000000 !important;
}
[data-theme='light'] .bento-card:hover, 
[data-theme='light'] .proj-card:hover, 
[data-theme='light'] .cert-card:hover, 
[data-theme='light'] .blog-card:hover {
  border-color: #000000 !important;
  box-shadow: 8px 8px 0px #000000 !important;
  transform: translate(-2px, -2px);
}

[data-theme='light'] .card-vibe { background: linear-gradient(135deg, #f0fdf4, #ffffff); }
[data-theme='light'] .vibe-quote { color: #000 !important; }
[data-theme='light'] .vibe-attr { color: var(--accent) !important; }
[data-theme='light'] .stat-n { color: #0f172a; }
[data-theme='light'] .proj-mini-item {
  color: #000;
  background: #ffffff;
  border: 2px solid #000000 !important;
  box-shadow: 4px 4px 0px #000000 !important;
}
[data-theme='light'] .proj-mini-item:hover {
  background: var(--accent) !important;
  box-shadow: 5px 5px 0px #000000 !important;
}
[data-theme='light'] .c-email a { color: #0f172a !important; text-decoration: none; }
[data-theme='light'] .globe-hint { background: rgba(255,255,255,0.9); color: #000; font-weight: 600; }
[data-theme='light'] .globe-wrap { box-shadow: inset 0 0 20px rgba(0,0,0,0.02), 0 0 30px rgba(22,163,74,0.15); border-color: transparent !important; }
[data-theme='light'] .map-header { background: linear-gradient(to bottom, rgba(255,255,255,0.95), transparent); }
[data-theme='light'] .btn-back-globe {
  background: #ffffff;
  color: #000;
  border: 2px solid #000000 !important;
  box-shadow: 3px 3px 0px #000000 !important;
}
[data-theme='light'] .btn-back-globe:hover {
  background: var(--accent) !important;
  box-shadow: 4px 4px 0px #000000 !important;
}

[data-theme='light'] .tools-grid span { background: #f8fafc; border: 1px solid rgba(0,0,0,0.08); color: #333; }
[data-theme='light'] .card-header .card-num { color: #000; }
[data-theme='light'] .card-bottom .card-name { color: #0f172a; font-weight: 700; }
[data-theme='light'] .cert-title { color: #0f172a; font-weight: 700;}
[data-theme='light'] .form-group input, [data-theme='light'] .form-group textarea {
  background: #ffffff;
  border: 2px solid #000000 !important;
  color: #000000;
  box-shadow: 3px 3px 0px #000000;
}
[data-theme='light'] .form-group input:focus, [data-theme='light'] .form-group textarea:focus {
  border-color: var(--accent) !important;
  box-shadow: 4px 4px 0px #000000;
}

[data-theme='light'] .hero-outline-text { -webkit-text-stroke: 1px rgba(0, 0, 0, 0.05); }
[data-theme='light'] .hero-visual-pedestal { background: rgba(240, 240, 245, 0.7); border: 2px solid #000000 !important; box-shadow: 6px 6px 0px #000000 !important; }
[data-theme='light'] .stack-card { border: 2px solid #000000 !important; box-shadow: 6px 6px 0px #000000 !important; }
[data-theme='light'] .horizontal-card, [data-theme='light'] .wall-card { border: 2px solid #000000 !important; box-shadow: 5px 5px 0px #000000 !important; }
[data-theme='light'] .horizontal-card:hover, [data-theme='light'] .wall-card:hover { border-color: #000000 !important; box-shadow: 7px 7px 0px #000000 !important; }er-color: rgba(0, 0, 0, 0.08); box-shadow: 0 10px 30px rgba(0,0,0,0.15); }

/* BACKGROUND LAYOUT GRID LINES */
.bg-grid-lines {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 50%;
  transform: translateX(-50%);
  width: 100%;
  max-width: 1380px;
  display: flex;
  justify-content: space-between;
  pointer-events: none;
  z-index: 1;
  padding: 0 2rem;
}
.bg-line {
  width: 1px;
  height: 100%;
  background: linear-gradient(to bottom, 
    transparent 0%, 
    var(--grid-line) 15%, 
    var(--grid-line) 85%, 
    transparent 100%
  );
/* ==================== 3D FLYING POSTERS SECTION ==================== */
.sec-flying-posters {
  position: relative;
  width: 100vw;
  height: 650px;
  min-height: 550px;
  background: #060608;
  background-image: 
    radial-gradient(circle at 50% 50%, rgba(0, 242, 254, 0.08), transparent 60%),
    radial-gradient(circle at 80% 80%, rgba(184, 255, 87, 0.08), transparent 50%);
  overflow: hidden;
  border-bottom: 1px solid var(--border);
  cursor: grab;
  z-index: 5;
}
.sec-flying-posters:active {
  cursor: grabbing;
}

.posters-container {
  position: absolute;
  inset: 0;
  width: 100%;
  height: 100%;
}

.posters-canvas {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  display: block;
}
/* ==================== NEW BLUEPRINT HERO SECTION ==================== */
.sec-blueprint-hero {
  position: relative;
  width: 100vw;
  min-height: 100vh;
  padding-top: 120px;
  padding-bottom: 5rem;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  overflow: hidden;
  background: #040406;
  border-bottom: 1px solid var(--border);
  box-sizing: border-box;
  z-index: 5;
}

.bp-hero-bg-wrapper {
  position: absolute;
  inset: 0;
  width: 100%;
  height: 100%;
  overflow: hidden;
  pointer-events: none;
  z-index: 1;
}

.bp-hero-bg-img {
  position: absolute;
  inset: -5%;
  width: 110%;
  height: 110%;
  object-fit: cover;
  opacity: 0.38;
  filter: contrast(1.15) brightness(0.85);
  transform: scale(1.05);
  transition: transform 0.8s cubic-bezier(0.16, 1, 0.3, 1);
  will-change: transform;
}

.bp-hero-overlay {
  position: absolute;
  inset: 0;
  background: 
    radial-gradient(circle at 50% 45%, rgba(6, 6, 8, 0.4) 0%, rgba(4, 4, 6, 0.92) 75%, #040406 100%),
    linear-gradient(180deg, rgba(4, 4, 6, 0.85) 0%, rgba(4, 4, 6, 0.4) 50%, rgba(4, 4, 6, 0.95) 100%);
  pointer-events: none;
}

.bp-hero-grid-overlay {
  position: absolute;
  inset: 0;
  background-image: linear-gradient(rgba(184, 255, 87, 0.03) 1px, transparent 1px), linear-gradient(90deg, rgba(184, 255, 87, 0.03) 1px, transparent 1px);
  background-size: 80px 80px;
  pointer-events: none;
}

.bp-hero-container {
  position: relative;
  z-index: 10;
  max-width: 1100px;
  width: 100%;
  margin: 0 auto;
  padding: 0 2rem;
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
}

/* Eyebrow Badge */
.bp-eyebrow-wrapper {
  margin-bottom: 1.5rem;
  opacity: 0;
  animation: heroFadeUp 0.8s 0.2s cubic-bezier(0.16, 1, 0.3, 1) forwards;
}

.bp-hero-badge {
  display: inline-flex;
  align-items: center;
  gap: 0.6rem;
  padding: 0.5rem 1.2rem;
  background: rgba(184, 255, 87, 0.06);
  border: 1px solid rgba(184, 255, 87, 0.22);
  border-radius: 999px;
  color: var(--accent);
  font-size: 0.72rem;
  letter-spacing: 0.22em;
  text-transform: uppercase;
  font-weight: 700;
  font-family: 'Space Grotesk', monospace, sans-serif;
  box-shadow: 0 0 25px rgba(184, 255, 87, 0.12);
  backdrop-filter: blur(10px);
}

.bp-badge-dot {
  width: 7px;
  height: 7px;
  border-radius: 50%;
  background: var(--accent);
  box-shadow: 0 0 10px var(--accent);
  animation: pulseDot 2s infinite;
}

@keyframes pulseDot {
  0%, 100% { transform: scale(1); opacity: 1; }
  50% { transform: scale(1.4); opacity: 0.6; }
}

/* Main Title & Gradient Shimmer */
.bp-hero-title {
  font-family: 'Inter', 'Space Grotesk', sans-serif;
  font-weight: 900;
  font-size: clamp(2.8rem, 6.5vw, 5.8rem);
  letter-spacing: -0.04em;
  line-height: 1.06;
  color: #ffffff;
  margin-bottom: 1.5rem;
  opacity: 0;
  animation: heroFadeUp 0.9s 0.35s cubic-bezier(0.16, 1, 0.3, 1) forwards;
}

.bp-gradient-shimmer {
  font-family: 'DM Serif Display', serif;
  font-style: italic;
  font-weight: 400;
  background: linear-gradient(135deg, #ffffff 0%, #b8ff57 40%, #06b6d4 75%, #7c3aed 100%);
  background-size: 250% auto;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  animation: bpShimmerText 6s linear infinite;
}

@keyframes bpShimmerText {
  0% { background-position: 0% center; }
  100% { background-position: 250% center; }
}

/* Subtitle */
.bp-hero-subtitle {
  font-size: clamp(1rem, 1.8vw, 1.22rem);
  color: rgba(255, 255, 255, 0.78);
  max-width: 720px;
  line-height: 1.7;
  margin: 0 auto 2.5rem;
  opacity: 0;
  animation: heroFadeUp 0.8s 0.5s cubic-bezier(0.16, 1, 0.3, 1) forwards;
}

.bp-hero-subtitle em {
  font-family: 'DM Serif Display', serif;
  font-style: italic;
  color: #ffffff;
}

@keyframes heroFadeUp {
  0% {
    opacity: 0;
    transform: translateY(30px);
    filter: blur(6px);
  }
  100% {
    opacity: 1;
    transform: translateY(0);
    filter: blur(0);
  }
}

/* Quick Stats Bar */
.bp-hero-stats {
  display: flex;
  gap: 1.5rem;
  margin-bottom: 2.8rem;
  flex-wrap: wrap;
  justify-content: center;
  opacity: 0;
  animation: heroFadeUp 0.8s 0.65s cubic-bezier(0.16, 1, 0.3, 1) forwards;
}

.bp-stat-card {
  background: rgba(17, 17, 24, 0.6);
  border: 1px solid rgba(255, 255, 255, 0.08);
  backdrop-filter: blur(16px);
  padding: 1rem 1.8rem;
  border-radius: 14px;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 0.3rem;
  transition: transform 0.3s ease, border-color 0.3s ease, box-shadow 0.3s ease;
}

.bp-stat-card:hover {
  transform: translateY(-4px);
  border-color: rgba(184, 255, 87, 0.35);
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5), 0 0 20px rgba(184, 255, 87, 0.1);
}

.bp-stat-num {
  font-family: 'Space Grotesk', sans-serif;
  font-size: 1.6rem;
  font-weight: 800;
  color: #ffffff;
  letter-spacing: -0.02em;
}

.bp-stat-lbl {
  font-size: 0.72rem;
  text-transform: uppercase;
  letter-spacing: 0.14em;
  color: var(--text3);
}

/* Corner Info Badges */
.bp-corner {
  position: absolute;
  font-size: 0.65rem;
  letter-spacing: 0.18em;
  text-transform: uppercase;
  color: var(--text3);
  z-index: 10;
}

.bp-corner strong {
  display: block;
  font-size: 0.78rem;
  color: #ffffff;
  font-weight: 700;
  margin-top: 0.2rem;
  letter-spacing: 0.1em;
}

.bp-corner.bl {
  bottom: 2.8rem;
  left: 3rem;
}

.bp-corner.br {
  bottom: 2.8rem;
  right: 3rem;
  text-align: right;
}
  user-select: none;
  -webkit-user-drag: none;
}

.scroll-expand__scrim {
  position: absolute;
  inset: 0;
  pointer-events: none;
  background: linear-gradient(to top, rgba(6, 6, 8, 0.95), rgba(6, 6, 8, 0.3) 45%, rgba(6, 6, 8, 0.6));
  opacity: 0;
}

.scroll-expand__overlay {
  position: absolute;
  inset: 0;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  padding: 6%;
  opacity: 0;
  will-change: opacity, transform;
}

.scroll-expand__overlay .eyebrow {
  font-size: 0.75rem;
  letter-spacing: 0.25em;
  text-transform: uppercase;
  color: var(--accent);
  font-weight: 700;
  font-family: 'Space Grotesk', monospace, sans-serif;
  margin-bottom: 0.75rem;
}

.scroll-expand__overlay .overlay-title {
  font-family: 'Space Grotesk', sans-serif;
  font-size: clamp(2.5rem, 5.5vw, 4.5rem);
  font-weight: 900;
  letter-spacing: -0.04em;
  line-height: 1.1;
  color: #fff;
  margin-bottom: 1rem;
}

.scroll-expand__overlay .overlay-title em {
  font-family: 'DM Serif Display', serif;
  font-style: italic;
  font-weight: 400;
  color: var(--accent);
}

.scroll-expand__overlay .overlay-sub {
  font-size: 1.1rem;
  color: rgba(255, 255, 255, 0.85);
  max-width: 640px;
  line-height: 1.6;
  margin-bottom: 1.8rem;
}

.overlay-btns {
  display: flex;
  gap: 1rem;
  margin-top: 0.5rem;
  flex-wrap: wrap;
  justify-content: center;
  z-index: 10;
  pointer-events: auto;
}

.btn-hero-primary {
  background: var(--accent);
  color: #000;
  padding: 0.75rem 1.8rem;
  border-radius: 999px;
  text-decoration: none;
  font-weight: 700;
  font-family: 'Space Grotesk', sans-serif;
  transition: transform 0.2s, box-shadow 0.2s;
  display: inline-block;
}

.btn-hero-primary:hover {
  transform: translateY(-2px);
  box-shadow: 0 10px 25px rgba(184, 255, 87, 0.4);
}

.btn-hero-secondary {
  background: rgba(255, 255, 255, 0.08);
  backdrop-filter: blur(10px);
  color: #fff;
  border: 1px solid var(--border2);
  padding: 0.75rem 1.8rem;
  border-radius: 999px;
  text-decoration: none;
  font-weight: 600;
  font-family: 'Space Grotesk', sans-serif;
  transition: background 0.2s, border-color 0.2s;
  display: inline-block;
}

.btn-hero-secondary:hover {
  background: rgba(255, 255, 255, 0.18);
  border-color: #fff;
}

.scroll-expand__title {
  position: absolute;
  inset: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0;
  padding: 0 6%;
  text-align: center;
  font-family: 'Space Grotesk', sans-serif;
  font-size: var(--se-title-size);
  font-weight: 800;
  letter-spacing: -0.03em;
  line-height: 1.1;
  color: #fff;
  text-shadow: 0 4px 30px rgba(0, 0, 0, 0.85);
  pointer-events: none;
  will-change: opacity, transform;
}

.scroll-expand__title em {
  font-family: 'DM Serif Display', serif;
  font-style: italic;
  font-weight: 400;
  color: var(--accent);
}

.scroll-expand__hint {
  position: absolute;
  left: 0;
  right: 0;
  bottom: 2.5rem;
  text-align: center;
  font-size: 0.85rem;
  letter-spacing: 0.18em;
  text-transform: uppercase;
  font-family: 'Space Grotesk', monospace, sans-serif;
  color: rgba(255, 255, 255, 0.7);
  pointer-events: none;
  will-change: opacity, transform;
}
</style>
</head>
<body>
<!-- BACKGROUND LAYOUT GRID LINES -->
<div class="bg-grid-lines" aria-hidden="true">
  <div class="bg-line"></div>
  <div class="bg-line"></div>
  <div class="bg-line"></div>
  <div class="bg-line"></div>
  <div class="bg-line"></div>
</div>

<div id="cur"></div><div id="cur-ring"></div>
<nav>
  <a href="index.html" class="nav-brand">
    <span class="nav-logo">VD</span>
    <div class="nav-tagline"><span>Web Designer</span><span class="green">Building The Future</span></div>
  </a>
  <div class="nav-center">
    <a href="index.html">Home</a><a href="about.html">About</a>
    <a href="work.html" class="active">Work</a>
    <a href="casestudies.html">Case Studies</a>
    <a href="certifications.html">Certs</a><a href="blog.html">Blog</a>
  </div>
  <div style="display:flex;align-items:center;gap:.6rem;">
    <button id="themeToggle" style="background:none;border:none;cursor:none;font-size:1.1rem;display:inline-flex;align-items:center;justify-content:center;width:34px;height:34px;border-radius:50%;border:1px solid var(--border2);margin-right:1rem;color:var(--text);transition:all 0.2s;">
  <span class="sun-icon" style="display:none;">☀</span>
  <span class="moon-icon">☾</span>
</button>
    <a href="contact.html" class="btn-hire">Book a Call ↗</a>
    <button class="ham" id="ham"><span></span><span></span><span></span></button>
  </div>
</nav>
<div class="mob-nav" id="mob">
  <a href="index.html">Home</a><a href="about.html">About</a><a href="work.html">Work</a>
  <a href="casestudies.html">Case Studies</a>
  <a href="certifications.html">Certifications</a><a href="blog.html">Blog</a><a href="contact.html">Contact</a>
</div>

<!-- ── NEW BLUEPRINT HERO SECTION ── -->
<section class="sec-blueprint-hero" id="hero-blueprint">
  <!-- Panning / Scaling Background Image Container -->
  <div class="bp-hero-bg-wrapper">
    <img src="expand.jpg" alt="Architectural Blueprint Wireframe" class="bp-hero-bg-img" id="bpHeroBgImg" />
    <div class="bp-hero-overlay"></div>
    <div class="bp-hero-grid-overlay"></div>
  </div>

  <div class="bp-hero-container">
    <!-- Eyebrow Badge -->
    <div class="bp-eyebrow-wrapper">
      <span class="bp-hero-badge">
        <span class="bp-badge-dot"></span>
        FEATURED WORKSPACE &bull; ARCHITECTURAL BLUEPRINT
      </span>
    </div>

    <!-- Main Title -->
    <h1 class="bp-hero-title">
      CRAFTING DIGITAL <br>
      <span class="bp-gradient-shimmer">ARCHITECTURES.</span>
    </h1>

    <!-- Subtitle -->
    <p class="bp-hero-subtitle">
      An immersive showcase of full-stack engineering, interactive 3D WebGL interfaces, and high-performance frontend designs built by <em>Vivek Dandotiya</em>.
    </p>

    <!-- Quick Stats Bar -->
    <div class="bp-hero-stats">
      <div class="bp-stat-card">
        <span class="bp-stat-num">100%</span>
        <span class="bp-stat-lbl">Custom Code Architecture</span>
      </div>
      <div class="bp-stat-card">
        <span class="bp-stat-num">60FPS</span>
        <span class="bp-stat-lbl">WebGL Canvas Performance</span>
      </div>
      <div class="bp-stat-card">
        <span class="bp-stat-num">0.2s</span>
        <span class="bp-stat-lbl">Ultra-Fast Load Response</span>
      </div>
    </div>

    <!-- Action Buttons -->
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

  <!-- Corner Badges -->
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

<!-- SECTION 3: 3D CYLINDER GALLERY GRID WALL -->
<section class="sec-cylinder" id="projects-stage">
  <div class="wall-header reveal">
    <p class="eyebrow">— Visual Workspace</p>
    <h2>Interactive <em>Cylinder</em> Grid</h2>
    <p class="sub">Hover cards to lift them in 3D perspective depth, slide to rotate the panoramic screen, and select tags to filter.</p>
  </div>

  <div class="wall-perspective-container">
    <div class="curved-wall-grid" id="curvedWallGrid">
      <!-- Generated Dynamically via Javascript -->
    </div>
  </div>

  <div class="prompt-bar-container reveal">
    <div class="prompt-bar">
      <span class="prompt-sparkle">✦</span>
      <input type="text" id="promptInput" placeholder="A futuristic AI-powered workspace showing digital assets..." readonly>
      <button class="prompt-btn" id="promptBtn">Create ✧</button>
    </div>
    <div class="prompt-tags">
      <button class="prompt-tag active" data-tag="all">ALL</button>
      <button class="prompt-tag" data-tag="web">WEB</button>
      <button class="prompt-tag" data-tag="design">DESIGN</button>
      <button class="prompt-tag" data-tag="chat">CHAT</button>
    </div>
  </div>
</section>

<!-- MODAL -->
<div id="modal-overlay">
  <div class="modal-card">
    <div class="bp-modal-header">
      <span class="bp-header-meta" id="mHeaderMeta">PROJECT BLUEPRINT // SYSTEM CONFIG</span>
      <button class="bp-close-btn" id="modalClose">BACK TO PROJECTS [✕]</button>
    </div>
    
    <div class="modal-grid-layout">
      <!-- Left Panel: Specs -->
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
      
      <!-- Middle Panel: Blueprint Stage -->
      <div class="bp-canvas-panel">
        <div class="bp-viewport-outer">
          <div class="bp-corner bpc-tl">+</div>
          <div class="bp-corner bpc-tr">+</div>
          <div class="bp-corner bpc-bl">+</div>
          <div class="bp-corner bpc-br">+</div>
          <div class="bp-coord-h">1200px</div>
          <div class="bp-coord-v">800px</div>
          
          <div id="bpViewport" style="width:100%; height:100%; display:flex; align-items:center; justify-content:center;"></div>
        </div>
        
        <div class="bp-tab-row">
          <button class="bp-tab-btn active" id="btnTabSys">[01] SYSTEM LAYOUT</button>
          <button class="bp-tab-btn" id="btnTabDb">[02] DATABASE SCHEMA</button>
          <button class="bp-tab-btn" id="btnTabImg">[03] REAL WORLD PREVIEW</button>
        </div>
      </div>
      
      <!-- Right Panel: Features, Links, Metrics -->
      <div class="bp-side-panel">
        <div>
          <div class="bp-section-label">KEY FEATURES</div>
          <div class="bp-features-list" id="mFeaturesList"></div>
        </div>
        
        <div>
          <div class="bp-section-label">PROJECT LINKS</div>
          <div style="display:flex; flex-direction:column; gap:0.6rem;">
            <a href="#" target="_blank" class="bp-link-btn bp-link-btn-primary" id="mLink">LIVE DEMO ↗</a>
            <a href="#" target="_blank" class="bp-link-btn" id="mGhLink">GITHUB REPOSITORY ⌥</a>
          </div>
        </div>
        
        <div>
          <div class="bp-section-label">PROJECT METRICS</div>
          <div class="bp-metrics-panel">
            <div class="bp-metric-row">
              <div class="bp-metric-meta">
                <span class="bp-metric-label">Performance</span>
                <span class="bp-metric-value" id="mPerfVal">98%</span>
              </div>
              <div class="bp-metric-bar-outer"><div class="bp-metric-bar-inner" id="mPerfBar"></div></div>
            </div>
            <div class="bp-metric-row">
              <div class="bp-metric-meta">
                <span class="bp-metric-label">Code Quality</span>
                <span class="bp-metric-value" id="mQualityVal">A+</span>
              </div>
              <div class="bp-metric-bar-outer"><div class="bp-metric-bar-inner" id="mQualityBar"></div></div>
            </div>
            <div class="bp-metric-row">
              <div class="bp-metric-meta">
                <span class="bp-metric-label">Best Practices</span>
                <span class="bp-metric-value" id="mBestVal">100%</span>
              </div>
              <div class="bp-metric-bar-outer"><div class="bp-metric-bar-inner" id="mBestBar"></div></div>
            </div>
            <div class="bp-metric-row">
              <div class="bp-metric-meta">
                <span class="bp-metric-label">Accessibility</span>
                <span class="bp-metric-value" id="mAccessVal">98%</span>
              </div>
              <div class="bp-metric-bar-outer"><div class="bp-metric-bar-inner" id="mAccessBar"></div></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="js/three.min.js"></script>
<script>
const projects=[
  {
    num:'01',
    icon:'🌐',
    name:'Portfolio Website',
    desc:"A hand-crafted personal portfolio built with pure HTML & CSS. Clean layout, smooth interactions, and a design representing Vivek's brand.",
    tags:['HTML5','CSS3','Responsive'],
    link:'https://vivek0052.in/',
    gh:'https://github.com/vivek0052',
    img:'images/portfolio_mockup.png',
    sub:'Personal Brand & Interactive Portfolio',
    overview:"A hand-crafted, high-performance personal portfolio built to highlight frontend design engineering capabilities. Built from the ground up with modular styling and interactive elements.",
    duration:'Feb 2025 - Mar 2025',
    role:'Lead Frontend Dev',
    status:'Completed',
    features:['Responsive Grid Layout', 'Synchronized Dark/Light Theme Switcher', 'Interactive 3D Three.js Visualizations', 'SEO-Optimized Metadata & Structure'],
    metrics:{ perf: 99, quality: 'A+', qualityBar: 98, best: 100, access: 96 },
    dbName: 'LocalStorage (Theme Cache)',
    category: 'web',
    themeColor: '#ffffff'
  },
  {
    num:'02',
    icon:'💼',
    name:'Freelancing Portfolio',
    desc:'Full-stack tech portfolio for freelance clients. Showcases services, past work, and CTAs built with modern frontend tooling.',
    tags:['Fullstack','React','Vercel'],
    link:'https://freelance-portfolio-client-delta.vercel.app/',
    gh:'https://github.com/vivek0052',
    img:'images/proj2.png',
    sub:'Clients Showcase & Service Platform',
    overview:"A full-stack, modular client portfolio built for showcasing freelance engineering services. Enables smooth navigation and high conversion rates for inbound leads.",
    duration:'Jan 2025 - Feb 2025',
    role:'Full Stack Dev',
    status:'Completed',
    features:['Dynamic Client-Side Routing', 'Bento-Style Dashboard Layout', 'Structured Services Listing Grid', 'Automated Lead Collection Form'],
    metrics:{ perf: 96, quality: 'A', qualityBar: 92, best: 95, access: 98 },
    dbName: 'Supabase SQL Database',
    category: 'web',
    themeColor: '#38bdf8'
  },
  {
    num:'03',
    icon:'📈',
    name:'Live Crypto Tracker',
    desc:'Real-time cryptocurrency price tracking with live updates, charts, and clean data presentation for crypto enthusiasts.',
    tags:['API','Real-time','Charts'],
    link:'https://live-crypto-update.vercel.app/',
    gh:'https://github.com/vivek0052',
    img:'images/proj3.png',
    sub:'Real-time Price & Watchlist Tracker',
    overview:"A real-time cryptocurrency telemetry tracking application. Connects to coin exchange APIs to stream live prices and render responsive historical charts.",
    duration:'Nov 2024 - Dec 2024',
    role:'Frontend Engineer',
    status:'Completed',
    features:['Real-time REST API Polling', 'Interactive Price Trend Charts', 'Filterable Coins Search Matrix', 'Custom Watchlist Persistence'],
    metrics:{ perf: 94, quality: 'A+', qualityBar: 96, best: 98, access: 95 },
    dbName: 'LocalStorage (Watchlists)',
    category: 'web',
    themeColor: '#34d399'
  },
  {
    num:'04',
    icon:'🎬',
    name:'Movie Booking App',
    desc:'Ticket booking platform for movies. Browse shows, select seats, and complete bookings with a smooth, intuitive UI flow.',
    tags:['JavaScript','UI/UX','Booking'],
    link:'https://ticket-booking-green.vercel.app/',
    gh:'https://github.com/vivek0052',
    img:'images/proj4.png',
    sub:'Ticket Booking & Seat Reservation',
    overview:"An interactive seat reservation platform for cinematic halls. Manages live booking transactions and grid state locks dynamically.",
    duration:'Oct 2024 - Nov 2024',
    role:'UI/UX Developer',
    status:'Completed',
    features:['Interactive Seating Grid Map', 'Real-time Selected Seat Buffer', 'Dynamic Total Pricing Calculation', 'Ticket Details Export Card'],
    metrics:{ perf: 92, quality: 'B+', qualityBar: 88, best: 90, access: 94 },
    dbName: 'Firebase Realtime DB',
    category: 'web',
    themeColor: '#e11d48'
  },
  {
    num:'05',
    icon:'⚡',
    name:'Real-Time Dashboard',
    desc:'Analytics dashboard built with TypeScript. Live data widgets, clean layout and performance-focused component architecture.',
    tags:['TypeScript','Dashboard','DataViz'],
    link:'https://real-time-dashboard-three.vercel.app/',
    gh:'https://github.com/vivek0052',
    img:'images/analytics_mockup.png',
    sub:'Live Telemetry & Metrics Monitor',
    overview:"A dashboard built with TypeScript for visualizing live metrics, resource telemetry tracking, and grid analytics.",
    duration:'Aug 2024 - Sep 2024',
    role:'Dashboard Engineer',
    status:'Completed',
    features:['Modular Telemetry Widget Cards', 'Real-time Chart.js Graphing Feed', 'System Metric Progress Bars', 'Active Columns Sorting & Filtering'],
    metrics:{ perf: 98, quality: 'A+', qualityBar: 98, best: 100, access: 98 },
    dbName: 'PostgreSQL Server Instance',
    category: 'web',
    themeColor: '#b8ff57'
  },
  {
    num:'06',
    icon:'🍔',
    name:'Food Delivery Site',
    desc:'Fast food ordering website built with Next.js and TypeScript. Browse menu, add to cart, and order with a polished experience.',
    tags:['Next.js','TypeScript','E-commerce'],
    link:'https://fast-food-website-two.vercel.app/',
    gh:'https://github.com/vivek0052',
    img:'images/proj6.png',
    sub:'Next.js E-Commerce Food Platform',
    overview:"A production-ready e-commerce food storefront designed with Next.js Server Components. Implements shopping carts and checkout flows.",
    duration:'Jul 2024 - Aug 2024',
    role:'Full Stack Engineer',
    status:'Completed',
    features:['Dynamic Shopping Cart Handler', 'Stripe Checkout API Integration', 'Product Categories Tab Navigation', 'Next.js Image CDN Optimization'],
    metrics:{ perf: 95, quality: 'A', qualityBar: 93, best: 96, access: 97 },
    dbName: 'MongoDB Cluster (Catalog)',
    category: 'web',
    themeColor: '#f97316'
  },
  {
    num:'07',
    icon:'✅',
    name:'Live Task Manager',
    desc:'A working reminder and task management app. Create, track, and manage tasks with live updates and clean productivity UI.',
    tags:['JavaScript','Productivity','Live'],
    link:'https://taskmaster-liart.vercel.app/',
    gh:'https://github.com/vivek0052',
    img:'images/proj7.png',
    sub:'Productivity & Task Planner App',
    overview:"A responsive productivity task planner designed for efficient workflow planning. Saves lists and states locally for zero setup latency.",
    duration:'Jun 2024 - Jul 2024',
    role:'JavaScript Developer',
    status:'Completed',
    features:['Dynamic Category Tag Filtering', 'Drag-and-Drop Task Sorting', 'Productivity Metrics Progression Tracker', 'Responsive Mobile-Ready Cards Grid'],
    metrics:{ perf: 97, quality: 'A', qualityBar: 92, best: 98, access: 96 },
    dbName: 'LocalStorage (Tasks File)',
    category: 'web',
    themeColor: '#fbbf24'
  },
  {
    num:'08',
    icon:'🎨',
    name:'Figma Prototype',
    desc:'Cake & Pastry — high-fidelity Figma UI prototype. Interactive flows, refined design system, and pixel-perfect screens.',
    tags:['Figma','UI Design','Prototype'],
    link:'https://www.figma.com/proto/CchptbZVg3D7iTaxUZXcbl/',
    gh:'https://github.com/vivek0052',
    img:'images/proj8.png',
    sub:'High-Fidelity Bakery UI Prototype',
    overview:"A high-fidelity Figma design prototype mapping cake shop user journeys. Developed with custom typography tokens, components, and interactive overlays.",
    duration:'May 2024 - Jun 2024',
    role:'UI/UX Designer',
    status:'Completed',
    features:['Pixel-Perfect Landing Artboard', 'Interactive Drawer Sidebars', 'Refined Typography Design Tokens', 'Click-to-Navigate Prototype Links'],
    metrics:{ perf: 100, quality: 'A+', qualityBar: 100, best: 100, access: 99 },
    dbName: 'Figma Variables Library',
    category: 'design',
    themeColor: '#ff7262'
  },
  {
    num:'09',
    icon:'🖥️',
    name:'Framer Portfolio',
    desc:'A sleek portfolio built entirely in Framer. Smooth animations, interactive sections and a no-code approach to beautiful design.',
    tags:['Framer','Motion','Portfolio'],
    link:'https://vkdportfolio.framer.website/',
    gh:'https://github.com/vivek0052',
    img:'images/proj9.png',
    sub:'Sleek Interactive Framer Site',
    overview:"A highly animated portfolio site designed completely in Framer. Highlights scroll-based triggers and dynamic fluid responsiveness.",
    duration:'Apr 2024 - May 2024',
    role:'Framer Developer',
    status:'Completed',
    features:['Dynamic Scroll-Triggered Motion', 'Fluid Viewport Adaptive Layouts', 'Structured Framer CMS Integration', 'Parallax Images Scrolling Overlay'],
    metrics:{ perf: 93, quality: 'A', qualityBar: 91, best: 94, access: 96 },
    dbName: 'Framer CMS Database',
    category: 'design',
    themeColor: '#e2e8f0'
  },
  {
    num:'10',
    icon:'💬',
    name:'Varta',
    desc:'A real-time chatting application similar to WhatsApp. Features private messaging, typing indicators, and a dark glassmorphic UI.',
    tags:['JavaScript','WebSockets','Firebase'],
    link:'https://github.com/vivek0052/varta',
    gh:'https://github.com/vivek0052/varta',
    img:'images/varta_mockup.png',
    sub:'Real-time Secure Messaging App',
    overview:"A production chatting platform mimicking modern secure messengers. Uses socket systems to bridge messages immediately with zero database poll lag.",
    duration:'May 2024 - Jul 2024',
    role:'Full Stack Dev',
    status:'Live',
    features:['Real-time WebSocket Messaging', 'Active Online Status Indicators', 'Typing Telemetry Broadcaster', 'Dark Glassmorphic UI Dashboard'],
    metrics:{ perf: 95, quality: 'A', qualityBar: 94, best: 96, access: 95 },
    dbName: 'MongoDB Replica Set',
    category: 'chat',
    themeColor: '#00ffd5'
  },
  {
    num:'11',
    icon:'📐',
    name:'Skills Dome Visualizer',
    desc:'Interactive semicircle dome visualizing technical and soft skills. Animated conveyor belt layouts built with colorful SVG brand assets.',
    tags:['SVG','Animation','UI Design'],
    link:'about.html',
    gh:'https://github.com/vivek0052',
    img:'images/skills_mockup.png',
    sub:'Cinematic Skills Dome Interface',
    overview:"An interactive conveyor belt semicircle dome layout displaying technical competencies and soft skills with colorful customized SVG brand paths.",
    duration:'Jun 2024 - Jul 2024',
    role:'UX Engineer',
    status:'Completed',
    features:['Semicircle Conveyor Layout Wrapping', 'Smooth Auto-Rotation loop', 'Adaptive Orbit Node Sizing', 'Distance-to-Edge Opacity Fades'],
    metrics:{ perf: 99, quality: 'A+', qualityBar: 98, best: 99, access: 98 },
    dbName: 'Local Storage Layout Configuration',
    category: 'design',
    themeColor: '#ff7262'
  },
  {
    num:'12',
    icon:'🌍',
    name:'3D WebGL Globe Explorer',
    desc:'WebGL-powered interactive 3D globe visualization in a bento card layout. Displays active communication links and custom connection nodes.',
    tags:['Three.js','WebGL','DataViz'],
    link:'index.html',
    gh:'https://github.com/vivek0052',
    img:'images/globe_mockup.png',
    sub:'Holographic 3D Globe Visualizer',
    overview:"A custom WebGL 3D globe explorer showcasing geographic connection nodes, resource coordinates, and smooth rotational orbit physics.",
    duration:'Jul 2024 - Aug 2024',
    role:'WebGL Developer',
    status:'Completed',
    features:['Interactive WebGL Globe Mesh', 'Holographic Atmosphere Glow', 'Dynamic Coordinate Nodes Mapping', 'Damped Mouse Parallax Tracking'],
    metrics:{ perf: 95, quality: 'A', qualityBar: 94, best: 96, access: 95 },
    dbName: 'Three.js Camera Telemetry',
    category: 'web',
    themeColor: '#38bdf8'
  }
];

const N = projects.length;
const mod = (n,m) => ((n%m)+m)%m;

// ═══ CURSOR GRADIENT EFFECTS ═══
const cur=document.getElementById('cur'),curRing=document.getElementById('cur-ring');
let mx=0,my=0,rx=0,ry=0;
document.addEventListener('mousemove',e=>{mx=e.clientX;my=e.clientY;});
(function loop(){
  cur.style.left=mx+'px';
  cur.style.top=my+'px';
  rx+=(mx-rx)*.12;
  ry+=(my-ry)*.12;
  curRing.style.left=rx+'px';
  curRing.style.top=ry+'px';
  requestAnimationFrame(loop);
})();

// Mobile nav
const ham=document.getElementById('ham'),mob=document.getElementById('mob');
ham.addEventListener('click',()=>{ham.classList.toggle('open');mob.classList.toggle('open');});
mob.querySelectorAll('a').forEach(a=>a.addEventListener('click',()=>{ham.classList.remove('open');mob.classList.remove('open');}));

// Intersection Observer reveal animations
const io=new IntersectionObserver(es=>es.forEach(e=>{if(e.isIntersecting){e.target.classList.add('in');io.unobserve(e.target);}}),{threshold:.06});
document.querySelectorAll('.reveal').forEach(el=>io.observe(el));

// ═══ STICKY HORIZONTAL SCROLL CARDS SHOWCASE ═══
const secStack = document.querySelector('.sec-stack');
const stackTrack = document.getElementById('stackTrack');

if (secStack && stackTrack) {
  window.addEventListener('scroll', () => {
    const rect = secStack.getBoundingClientRect();
    const scrollStart = window.pageYOffset + rect.top;
    const scrollHeight = rect.height - window.innerHeight;
    const scrolled = window.pageYOffset - scrollStart;
    
    if (scrolled >= 0 && scrolled <= scrollHeight) {
      const pct = scrolled / scrollHeight; // range 0 to 1
      const startX = -90;
      const endX = 90;
      const currentX = startX + pct * (endX - startX);
      stackTrack.style.transform = `translateX(${currentX}vw) translateX(-50%)`;
    } else if (scrolled < 0) {
      stackTrack.style.transform = `translateX(-90vw) translateX(-50%)`;
    } else {
      stackTrack.style.transform = `translateX(90vw) translateX(-50%)`;
    }
  });
}

// ═══ ENTRANCE FADE-IN ANIMATION ═══
window.addEventListener('load', () => {
  setTimeout(() => {
    document.body.classList.add('loaded');
  }, 100);
});

// ═══ 3D CYLINDER GRID GENERATION & LAYOUT Math ═══
const numCols = 6;
const radius = 980; // cylinder radius in pixels
const baseGap = 26; // gap in degrees between columns
const curvedWallGrid = document.getElementById('curvedWallGrid');

function hexToRgb(hex) {
  const bigint = parseInt(hex.replace('#', ''), 16);
  const r = (bigint >> 16) & 255;
  const g = (bigint >> 8) & 255;
  const b = bigint & 255;
  return `${r}, ${g}, ${b}`;
}

function createCardElement(p, idx) {
  const card = document.createElement('div');
  card.className = 'wall-card';
  card.dataset.cat = p.category;
  card.dataset.index = idx;
  card.style.setProperty('--theme-color', p.themeColor);
  card.style.setProperty('--theme-color-rgb', hexToRgb(p.themeColor));
  
  card.innerHTML = `
    <div class="wall-card-preview" style="background-image: url('${p.img}');"></div>
    <div class="wall-card-glow"></div>
    <div class="wall-card-overlay">
      <div class="wall-card-top">
        <span class="wall-card-badge">${p.category}</span>
        <span class="wall-card-num">${p.num}</span>
      </div>
      <div class="wall-card-bottom">
        <h3 class="wall-card-title">${p.name}</h3>
        <p class="wall-card-desc">${p.desc}</p>
        <div style="display:flex; gap:0.5rem; margin-top:0.5rem;">
          <button class="card-btn-bp" onclick="event.stopPropagation(); openModal(${idx});">Blueprint ⚙</button>
          <a href="${p.link}" target="_blank" class="card-btn-demo" onclick="event.stopPropagation();">Live Demo ↗</a>
        </div>
      </div>
    </div>
  `;
  
  card.addEventListener('click', () => {
    openModal(idx);
  });
  
  return card;
}

// Generate the curved grid cylinder structure
function initCylinderGrid() {
  curvedWallGrid.innerHTML = "";
  for (let c = 0; c < numCols; c++) {
    const colAngle = (c - (numCols - 1) / 2) * baseGap; // e.g. -65, -39, -13, 13, 39, 65
    const colEl = document.createElement('div');
    colEl.className = 'wall-col';
    colEl.style.transform = `rotateY(${colAngle}deg) translateZ(${-radius}px) rotateY(${-colAngle * 0.15}deg)`;
    
    // Row 0 card
    const p1Idx = c * 2;
    if (p1Idx < N) {
      colEl.appendChild(createCardElement(projects[p1Idx], p1Idx));
    }
    
    // Row 1 card
    const p2Idx = c * 2 + 1;
    if (p2Idx < N) {
      colEl.appendChild(createCardElement(projects[p2Idx], p2Idx));
    }
    
    curvedWallGrid.appendChild(colEl);
  }
}
initCylinderGrid();

// ═══ MOUSE-TRACKING ROTATION & FLOATING PARALLAX ═══
let yaw = 0;
let pitch = 0;
let targetYaw = 0;
let targetPitch = 0;
let rotationOffset = 0;
let isDragging = false;
let startX = 0;

document.addEventListener('mousemove', e => {
  if (isDragging) return;
  const xPercent = (e.clientX - window.innerWidth / 2) / (window.innerWidth / 2);
  const yPercent = (e.clientY - window.innerHeight / 2) / (window.innerHeight / 2);
  targetYaw = xPercent * 24; // rotate grid up to 24 deg
  targetPitch = -yPercent * 12; // pitch grid up to 12 deg
});

// Drag interaction
const wallStage = document.querySelector('.wall-perspective-container');
if (wallStage) {
  wallStage.addEventListener('mousedown', e => {
    isDragging = true;
    startX = e.clientX;
    wallStage.style.cursor = 'grabbing';
  });

  document.addEventListener('mousemove', e => {
    if (!isDragging) return;
    const deltaX = e.clientX - startX;
    rotationOffset += deltaX * 0.12; // drag responsiveness
    startX = e.clientX;
  });

  document.addEventListener('mouseup', () => {
    isDragging = false;
    wallStage.style.cursor = 'none';
  });
}

// Smooth damping animation loop
function updateDamping() {
  if (!isDragging) {
    yaw += (targetYaw - yaw) * 0.07;
    pitch += (targetPitch - pitch) * 0.07;
  }
  if (curvedWallGrid) {
    curvedWallGrid.style.transform = `rotateX(${pitch}deg) rotateY(${yaw + rotationOffset}deg)`;
  }
  requestAnimationFrame(updateDamping);
}
updateDamping();

// ═══ TYPEWRITER PROMPT FILTER CONTROLLERS ═══
let typewriterTimer = null;
const promptInput = document.getElementById('promptInput');

const promptMap = {
  all: "Show all systems, Figma prototypes, and creative web portals in the 3D space...",
  web: "Filter and reveal high-performance responsive web products and telemetry logs...",
  design: "Filter pixel-perfect Figma prototypes and Framer CMS creations...",
  chat: "Filter instant WebSocket messaging networks and real-time dashboards..."
};

function typePromptText(text) {
  if (!promptInput) return;
  clearInterval(typewriterTimer);
  promptInput.value = "";
  let i = 0;
  typewriterTimer = setInterval(() => {
    if (i < text.length) {
      promptInput.value += text.charAt(i);
      i++;
    } else {
      clearInterval(typewriterTimer);
    }
  }, 20);
}

function filterTag(tag) {
  document.querySelectorAll('.wall-card').forEach(card => {
    const cat = card.dataset.cat;
    if (tag === 'all' || cat === tag) {
      card.classList.remove('filtered-out');
    } else {
      card.classList.add('filtered-out');
    }
  });
}

// Bind tags
const tags = document.querySelectorAll('.prompt-tag');
tags.forEach(tagBtn => {
  tagBtn.addEventListener('click', () => {
    tags.forEach(t => t.classList.remove('active'));
    tagBtn.classList.add('active');
    
    const tag = tagBtn.dataset.tag;
    typePromptText(promptMap[tag]);
    filterTag(tag);
  });
  
  tagBtn.addEventListener('mouseenter', () => {
    const tag = tagBtn.dataset.tag;
    typePromptText(promptMap[tag]);
  });
});

typePromptText(promptMap.all);


// ═══ DYNAMIC SVG BLUEPRINT GENERATORS ════════════════════════════
function generateSystemLayoutSVG(p, idx) {
  const isMobile = p.num === '10';
  const isDesign = p.num === '08';
  
  if (isMobile) {
    return `
      <svg class="bp-svg" viewBox="0 0 800 480" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg">
        <g fill="none" stroke="rgba(0, 242, 254, 0.15)" stroke-width="1">
          <!-- Grid lines -->
          <line x1="100" y1="0" x2="100" y2="480" stroke="rgba(0,242,254,0.03)" />
          <line x1="200" y1="0" x2="200" y2="480" stroke="rgba(0,242,254,0.03)" />
          <line x1="600" y1="0" x2="600" y2="480" stroke="rgba(0,242,254,0.03)" />
          <line x1="700" y1="0" x2="700" y2="480" stroke="rgba(0,242,254,0.03)" />
          
          <!-- Phone frame -->
          <rect x="290" y="20" width="220" height="440" rx="30" stroke="rgba(0, 242, 254, 0.8)" stroke-width="3" />
          <rect x="300" y="30" width="200" height="420" rx="20" stroke="rgba(0, 242, 254, 0.4)" stroke-width="1.5" />
          <!-- Notch -->
          <path d="M 370 30 Q 370 45, 385 45 L 415 45 Q 430 45, 430 30" fill="rgba(0, 242, 254, 0.2)" stroke="rgba(0, 242, 254, 0.8)" />
          
          <!-- Header -->
          <line x1="300" y1="75" x2="500" y2="75" stroke="rgba(0, 242, 254, 0.4)" stroke-width="1.5" />
          <circle cx="330" cy="58" r="10" stroke="rgba(0, 242, 254, 0.6)" stroke-width="1.5" />
          <rect x="350" y="53" width="70" height="10" rx="3" fill="rgba(0, 242, 254, 0.2)" />
          
          <!-- Chats list bubbles -->
          <rect x="310" y="100" width="110" height="35" rx="8" fill="rgba(0, 242, 254, 0.1)" stroke="rgba(0, 242, 254, 0.4)" />
          <rect x="320" y="110" width="90" height="6" rx="2" fill="rgba(0, 242, 254, 0.3)" />
          <rect x="320" y="122" width="50" height="6" rx="2" fill="rgba(0, 242, 254, 0.3)" />
          
          <rect x="380" y="150" width="110" height="45" rx="8" fill="rgba(5, 255, 163, 0.1)" stroke="rgba(5, 255, 163, 0.4)" />
          <rect x="390" y="160" width="90" height="6" rx="2" fill="rgba(5, 255, 163, 0.4)" />
          <rect x="390" y="172" width="70" height="6" rx="2" fill="rgba(5, 255, 163, 0.4)" />
          <rect x="390" y="184" width="40" height="6" rx="2" fill="rgba(5, 255, 163, 0.4)" />
          
          <rect x="310" y="210" width="120" height="35" rx="8" fill="rgba(0, 242, 254, 0.1)" stroke="rgba(0, 242, 254, 0.4)" />
          <rect x="320" y="220" width="100" height="6" rx="2" fill="rgba(0, 242, 254, 0.3)" />
          <rect x="320" y="232" width="60" height="6" rx="2" fill="rgba(0, 242, 254, 0.3)" />
          
          <!-- Message input -->
          <rect x="310" y="405" width="150" height="25" rx="12" stroke="rgba(0, 242, 254, 0.6)" />
          <circle cx="482" cy="417" r="12" fill="rgba(5, 255, 163, 0.2)" stroke="rgba(5, 255, 163, 0.8)" />
          <path d="M 478 417 L 486 417 M 483 413 L 486 417 L 483 421" stroke="rgba(5, 255, 163, 0.8)" stroke-width="1.5" />
          
          <!-- Annotations -->
          <line x1="510" y1="240" x2="600" y2="240" stroke="rgba(0, 242, 254, 0.8)" stroke-dasharray="3,3" />
          <circle cx="510" cy="240" r="3" fill="rgba(0, 242, 254, 0.8)" />
          <text x="610" y="244" fill="rgba(0, 242, 254, 0.8)" font-family="monospace" font-size="11">MOBILE INTERFACE (375x812px)</text>
          
          <line x1="290" y1="120" x2="160" y2="120" stroke="rgba(0, 242, 254, 0.8)" stroke-dasharray="3,3" />
          <circle cx="290" cy="120" r="3" fill="rgba(0, 242, 254, 0.8)" />
          <text x="40" y="124" fill="rgba(0, 242, 254, 0.8)" font-family="monospace" font-size="11">SECURE SOCKETS FEED</text>
        </g>
      </svg>
    `;
  }
  
  if (isDesign) {
    return `
      <svg class="bp-svg" viewBox="0 0 800 480" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg">
        <g fill="none" stroke="rgba(0, 242, 254, 0.15)" stroke-width="1">
          <!-- Canvas area -->
          <rect x="50" y="30" width="700" height="420" stroke="rgba(0, 242, 254, 0.6)" stroke-width="2" />
          
          <!-- Figma panels -->
          <rect x="50" y="30" width="160" height="420" stroke="rgba(0, 242, 254, 0.4)" />
          <text x="65" y="55" fill="rgba(0, 242, 254, 0.8)" font-family="monospace" font-size="12" font-weight="bold">LAYERS</text>
          <text x="65" y="85" fill="rgba(0, 242, 254, 0.5)" font-family="monospace" font-size="11"># Header Frame</text>
          <text x="65" y="110" fill="rgba(0, 242, 254, 0.5)" font-family="monospace" font-size="11"># Hero Banner</text>
          <text x="65" y="135" fill="rgba(0, 242, 254, 0.5)" font-family="monospace" font-size="11"># Product Grid</text>
          <text x="75" y="155" fill="rgba(0, 242, 254, 0.3)" font-family="monospace" font-size="10">[] card_bakery_1</text>
          <text x="75" y="175" fill="rgba(0, 242, 254, 0.3)" font-family="monospace" font-size="10">[] card_bakery_2</text>
          
          <!-- Artboards -->
          <rect x="250" y="70" width="220" height="150" stroke="rgba(0, 242, 254, 0.8)" stroke-width="1.5" />
          <text x="250" y="60" fill="rgba(0, 242, 254, 0.8)" font-family="monospace" font-size="11">Desktop - Landing Page</text>
          <rect x="270" y="90" width="180" height="15" fill="rgba(0, 242, 254, 0.1)" />
          <circle cx="290" cy="150" r="25" stroke="rgba(0, 242, 254, 0.4)" />
          
          <rect x="520" y="70" width="100" height="180" stroke="rgba(0, 242, 254, 0.8)" stroke-width="1.5" />
          <text x="520" y="60" fill="rgba(0, 242, 254, 0.8)" font-family="monospace" font-size="11">Mobile Screen</text>
          <rect x="535" y="90" width="70" height="15" fill="rgba(0, 242, 254, 0.1)" />
          <circle cx="570" cy="160" r="18" stroke="rgba(0, 242, 254, 0.4)" />
          
          <!-- Interactive connection link -->
          <path d="M 470 145 C 500 145, 490 200, 520 200" stroke="rgba(5, 255, 163, 0.8)" stroke-width="2" stroke-dasharray="4,4" />
          <polygon points="520,200 514,196 514,204" fill="rgba(5, 255, 163, 0.8)" />
          
          <text x="450" y="245" fill="rgba(5, 255, 163, 0.8)" font-family="monospace" font-size="10">CLICK PROTOTYPE LINK</text>
          
          <!-- Annotations -->
          <line x1="160" y1="350" x2="300" y2="350" stroke="rgba(0, 242, 254, 0.5)" stroke-dasharray="3,3" />
          <text x="310" y="354" fill="rgba(0, 242, 254, 0.8)" font-family="monospace" font-size="11">HIGH-FIDELITY FIGMA INTERACTIVE WIREFRAMING</text>
        </g>
      </svg>
    `;
  }
  
  // Default browser layout
  return `
    <svg class="bp-svg" viewBox="0 0 800 480" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg">
      <g fill="none" stroke="rgba(0, 242, 254, 0.15)" stroke-width="1">
        <!-- Browser Window -->
        <rect x="80" y="40" width="640" height="400" rx="8" stroke="rgba(0, 242, 254, 0.8)" stroke-width="2.5" />
        <!-- Header -->
        <line x1="80" y1="80" x2="720" y2="80" stroke="rgba(0, 242, 254, 0.8)" stroke-width="1.5" />
        <!-- URL bar close dots -->
        <circle cx="105" cy="60" r="5" fill="rgba(0, 242, 254, 0.2)" stroke="rgba(0, 242, 254, 0.8)" />
        <circle cx="120" cy="60" r="5" fill="rgba(0, 242, 254, 0.2)" stroke="rgba(0, 242, 254, 0.8)" />
        <circle cx="135" cy="60" r="5" fill="rgba(0, 242, 254, 0.2)" stroke="rgba(0, 242, 254, 0.8)" />
        <!-- URL Box -->
        <rect x="160" y="50" width="460" height="20" rx="5" stroke="rgba(0, 242, 254, 0.4)" />
        <line x1="175" y1="60" x2="250" y2="60" stroke="rgba(0, 242, 254, 0.5)" stroke-width="1.5" />
        
        <!-- Sidebar layout -->
        <rect x="80" y="80" width="140" height="360" stroke="rgba(0, 242, 254, 0.4)" />
        <line x1="95" y1="115" x2="205" y2="115" stroke="rgba(0, 242, 254, 0.3)" />
        <line x1="95" y1="145" x2="185" y2="145" stroke="rgba(0, 242, 254, 0.3)" />
        <line x1="95" y1="175" x2="195" y2="175" stroke="rgba(0, 242, 254, 0.3)" />
        
        <!-- Main Content layout -->
        <rect x="240" y="100" width="460" height="110" rx="5" fill="rgba(0, 242, 254, 0.05)" stroke="rgba(0, 242, 254, 0.4)" />
        <line x1="260" y1="130" x2="420" y2="130" stroke="rgba(0, 242, 254, 0.6)" stroke-width="2" />
        <line x1="260" y1="155" x2="550" y2="155" stroke="rgba(0, 242, 254, 0.3)" />
        <line x1="260" y1="170" x2="490" y2="170" stroke="rgba(0, 242, 254, 0.3)" />
        <rect x="600" y="120" width="80" height="70" fill="rgba(0, 242, 254, 0.1)" stroke="rgba(0, 242, 254, 0.4)" />
        
        <!-- Grid Items -->
        <rect x="240" y="235" width="140" height="180" rx="5" fill="rgba(0, 242, 254, 0.05)" stroke="rgba(0, 242, 254, 0.4)" />
        <circle cx="310" cy="275" r="20" stroke="rgba(0, 242, 254, 0.4)" />
        <line x1="260" y1="320" x2="360" y2="320" stroke="rgba(0, 242, 254, 0.5)" />
        <line x1="260" y1="340" x2="330" y2="340" stroke="rgba(0, 242, 254, 0.3)" />
        <rect x="260" y="370" width="100" height="25" rx="3" fill="rgba(5, 255, 163, 0.1)" stroke="rgba(5, 255, 163, 0.6)" />
        
        <rect x="400" y="235" width="140" height="180" rx="5" fill="rgba(0, 242, 254, 0.05)" stroke="rgba(0, 242, 254, 0.4)" />
        <circle cx="470" cy="275" r="20" stroke="rgba(0, 242, 254, 0.4)" />
        <line x1="420" y1="320" x2="520" y2="320" stroke="rgba(0, 242, 254, 0.5)" />
        <line x1="420" y1="340" x2="490" y2="340" stroke="rgba(0, 242, 254, 0.3)" />
        <rect x="420" y="370" width="100" height="25" rx="3" fill="rgba(5, 255, 163, 0.1)" stroke="rgba(5, 255, 163, 0.6)" />
        
        <rect x="560" y="235" width="140" height="180" rx="5" fill="rgba(0, 242, 254, 0.05)" stroke="rgba(0, 242, 254, 0.4)" />
        <circle cx="630" cy="275" r="20" stroke="rgba(0, 242, 254, 0.4)" />
        <line x1="580" y1="320" x2="680" y2="320" stroke="rgba(0, 242, 254, 0.5)" />
        <line x1="580" y1="340" x2="650" y2="340" stroke="rgba(0, 242, 254, 0.3)" />
        <rect x="580" y="370" width="100" height="25" rx="3" fill="rgba(5, 255, 163, 0.1)" stroke="rgba(5, 255, 163, 0.6)" />
        
        <!-- Outer layout labels -->
        <line x1="400" y1="40" x2="400" y2="10" stroke="rgba(0, 242, 254, 0.8)" stroke-width="1" />
        <text x="410" y="25" fill="rgba(0, 242, 254, 0.8)" font-family="monospace" font-size="11">WIDTH: 1280px</text>
      </g>
    </svg>
  `;
}

function generateDatabaseSchemaSVG(p, idx) {
  const dbTech = p.dbName || 'LOCALSTORAGE CACHE';
  
  let t1Name = 'users', t1Cols = ['id: UUID [PK]', 'email: VARCHAR', 'created_at: TIMESTAMP'];
  let t2Name = 'records', t2Cols = ['id: UUID [PK]', 'user_id: UUID [FK]', 'value: TEXT', 'updated_at: TIMESTAMP'];
  let t3Name = 'analytics', t3Cols = ['id: UUID [PK]', 'record_id: UUID [FK]', 'event: VARCHAR', 'logged_at: TIMESTAMP'];
  
  if (p.num === '10') {
    t1Name = 'users'; t1Cols = ['id: ObjectId [PK]', 'username: STRING', 'avatar: STRING', 'status: BOOLEAN'];
    t2Name = 'messages'; t2Cols = ['id: ObjectId [PK]', 'sender_id: ObjectId [FK]', 'room_id: ObjectId [FK]', 'text: STRING', 'sent_at: DATE'];
    t3Name = 'rooms'; t3Cols = ['id: ObjectId [PK]', 'name: STRING', 'type: STRING', 'created_by: ObjectId [FK]'];
  } else if (p.num === '03') {
    t1Name = 'preferences'; t1Cols = ['id: INT [PK]', 'theme: VARCHAR', 'currency: VARCHAR'];
    t2Name = 'watchlists'; t2Cols = ['id: INT [PK]', 'coin_id: VARCHAR', 'alert_price: DECIMAL'];
    t3Name = 'price_cache'; t3Cols = ['coin_id: VARCHAR [PK]', 'price_usd: DECIMAL', 'last_fetched: TIMESTAMP'];
  } else if (p.num === '07') {
    t1Name = 'categories'; t1Cols = ['id: INT [PK]', 'name: VARCHAR', 'color: VARCHAR'];
    t2Name = 'tasks'; t2Cols = ['id: INT [PK]', 'category_id: INT [FK]', 'title: VARCHAR', 'due_date: DATE', 'done: BOOLEAN'];
    t3Name = 'logs'; t3Cols = ['id: INT [PK]', 'task_id: INT [FK]', 'action: VARCHAR', 'timestamp: TIMESTAMP'];
  } else if (p.num === '04') {
    t1Name = 'customers'; t1Cols = ['id: VARCHAR [PK]', 'name: VARCHAR', 'email: VARCHAR'];
    t2Name = 'bookings'; t2Cols = ['id: VARCHAR [PK]', 'show_id: VARCHAR [FK]', 'customer_id: VARCHAR [FK]', 'seats: ARRAY', 'paid: BOOLEAN'];
    t3Name = 'shows'; t3Cols = ['id: VARCHAR [PK]', 'movie_title: VARCHAR', 'hall_num: INT', 'start_time: TIMESTAMP'];
  }
  
  return `
    <svg class="bp-svg" viewBox="0 0 800 480" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg">
      <g fill="none" stroke="rgba(0, 242, 254, 0.15)" stroke-width="1">
        <!-- DB Header label -->
        <rect x="50" y="30" width="700" height="40" rx="5" fill="rgba(0, 242, 254, 0.05)" stroke="rgba(0, 242, 254, 0.5)" />
        <text x="70" y="55" fill="rgba(5, 255, 163, 0.85)" font-family="monospace" font-size="12" font-weight="bold">${dbTech.toUpperCase()} SYSTEM RELATIONAL DIAGRAM</text>
        <circle cx="720" cy="50" r="6" fill="rgba(5, 255, 163, 0.8)" />
        
        <!-- Table 1 -->
        <rect x="50" y="110" width="180" height="180" rx="5" fill="rgba(0, 242, 254, 0.03)" stroke="rgba(0, 242, 254, 0.6)" stroke-width="1.5" />
        <rect x="50" y="110" width="180" height="30" fill="rgba(0, 242, 254, 0.15)" />
        <text x="60" y="130" fill="rgba(0, 242, 254, 0.9)" font-family="monospace" font-size="12" font-weight="bold">TABLE: ${t1Name}</text>
        ${t1Cols.map((c, idx) => `
          <text x="60" y="${165 + idx * 25}" fill="rgba(0, 242, 254, 0.7)" font-family="monospace" font-size="10">${c}</text>
          <line x1="50" y1="${175 + idx * 25}" x2="230" y2="${175 + idx * 25}" stroke="rgba(0, 242, 254, 0.1)" />
        `).join('')}
        
        <!-- Table 2 -->
        <rect x="310" y="110" width="180" height="200" rx="5" fill="rgba(0, 242, 254, 0.03)" stroke="rgba(0, 242, 254, 0.6)" stroke-width="1.5" />
        <rect x="310" y="110" width="180" height="30" fill="rgba(0, 242, 254, 0.15)" />
        <text x="320" y="130" fill="rgba(0, 242, 254, 0.9)" font-family="monospace" font-size="12" font-weight="bold">TABLE: ${t2Name}</text>
        ${t2Cols.map((c, idx) => `
          <text x="320" y="${165 + idx * 25}" fill="rgba(0, 242, 254, 0.7)" font-family="monospace" font-size="10">${c}</text>
          <line x1="310" y1="${175 + idx * 25}" x2="490" y2="${175 + idx * 25}" stroke="rgba(0, 242, 254, 0.1)" />
        `).join('')}
        
        <!-- Table 3 -->
        <rect x="570" y="110" width="180" height="180" rx="5" fill="rgba(0, 242, 254, 0.03)" stroke="rgba(0, 242, 254, 0.6)" stroke-width="1.5" />
        <rect x="570" y="110" width="180" height="30" fill="rgba(0, 242, 254, 0.15)" />
        <text x="580" y="130" fill="rgba(0, 242, 254, 0.9)" font-family="monospace" font-size="12" font-weight="bold">TABLE: ${t3Name}</text>
        ${t3Cols.map((c, idx) => `
          <text x="580" y="${165 + idx * 25}" fill="rgba(0, 242, 254, 0.7)" font-family="monospace" font-size="10">${c}</text>
          <line x1="570" y1="${175 + idx * 25}" x2="750" y2="${175 + idx * 25}" stroke="rgba(0, 242, 254, 0.1)" />
        `).join('')}
        
        <!-- Connective links representing database mapping keys -->
        <path d="M 230 160 C 270 160, 270 190, 310 190" stroke="rgba(5, 255, 163, 0.8)" stroke-width="2" />
        <circle cx="230" cy="160" r="3" fill="rgba(5, 255, 163, 0.8)" />
        <circle cx="310" cy="190" r="3" fill="rgba(5, 255, 163, 0.8)" />
        <text x="250" y="150" fill="rgba(5, 255, 163, 0.8)" font-family="monospace" font-size="9">1 : N LINK</text>
        
        <path d="M 570 190 C 530 190, 530 160, 490 160" stroke="rgba(5, 255, 163, 0.8)" stroke-width="2" />
        <circle cx="570" cy="190" r="3" fill="rgba(5, 255, 163, 0.8)" />
        <circle cx="490" cy="160" r="3" fill="rgba(5, 255, 163, 0.8)" />
        
        <!-- Legend / Notes -->
        <rect x="50" y="375" width="700" height="60" rx="3" stroke="rgba(0, 242, 254, 0.3)" />
        <text x="70" y="398" fill="rgba(0, 242, 254, 0.5)" font-family="monospace" font-size="10">* Primary Keys [PK] establish relational integrity constraint layers.</text>
        <text x="70" y="418" fill="rgba(0, 242, 254, 0.5)" font-family="monospace" font-size="10">* Foreign Keys [FK] connect relational entities via index mapping lookups.</text>
      </g>
    </svg>
  `;
}


// ═══ BLUEPRINT MODAL CONTROLLER ══════════════════════════════════
const overlay = document.getElementById('modal-overlay');
let activeTabState = 'layout'; // 'layout', 'db', 'img'

function openModal(idx) {
  modalIdx = mod(idx, N);
  activeTabState = 'layout'; // Default tab on open
  fillModal(modalIdx);
  overlay.classList.add('open');
  modalOpen = true;
}

function closeModal() {
  overlay.classList.remove('open');
  modalOpen = false;
}

function fillModal(idx) {
  const p = projects[idx];
  
  // Header Meta
  document.getElementById('mHeaderMeta').textContent = `PROJECT BLUEPRINT // SYSTEM CONFIG // ${p.num}`;
  
  // Left Panel
  document.getElementById('mTitle').textContent = p.name;
  document.getElementById('mSubtitle').textContent = p.sub;
  document.getElementById('mOverview').textContent = p.overview;
  document.getElementById('mDuration').textContent = p.duration;
  document.getElementById('mRole').textContent = p.role;
  document.getElementById('mStatus').textContent = p.status;
  
  // Tech Grid
  document.getElementById('mTechGrid').innerHTML = p.tags.map(t => `<span class="bp-tech-pill">${t}</span>`).join('');
  
  // Right Panel: Features List
  document.getElementById('mFeaturesList').innerHTML = p.features.map(f => `
    <div class="bp-feature-item">
      <span class="bp-feature-icon">✓</span>
      <span>${f}</span>
    </div>
  `).join('');
  
  // Links
  document.getElementById('mLink').href = p.link;
  document.getElementById('mGhLink').href = p.gh;
  
  // Reset active metrics bars
  document.getElementById('mPerfBar').style.width = '0';
  document.getElementById('mQualityBar').style.width = '0';
  document.getElementById('mBestBar').style.width = '0';
  document.getElementById('mAccessBar').style.width = '0';
  
  // Pop values
  document.getElementById('mPerfVal').textContent = p.metrics.perf + '%';
  document.getElementById('mQualityVal').textContent = p.metrics.quality;
  document.getElementById('mBestVal').textContent = p.metrics.best + '%';
  document.getElementById('mAccessVal').textContent = p.metrics.access + '%';
  
  // Set active tab buttons classes
  switchBlueprintTab(activeTabState);
  
  // Animate metrics progress bars on load
  setTimeout(() => {
    document.getElementById('mPerfBar').style.width = p.metrics.perf + '%';
    document.getElementById('mQualityBar').style.width = p.metrics.qualityBar + '%';
    document.getElementById('mBestBar').style.width = p.metrics.best + '%';
    document.getElementById('mAccessBar').style.width = p.metrics.access + '%';
  }, 100);
}

function switchBlueprintTab(tabType) {
  activeTabState = tabType;
  
  // Toggle button active classes
  document.getElementById('btnTabSys').classList.toggle('active', tabType === 'layout');
  document.getElementById('btnTabDb').classList.toggle('active', tabType === 'db');
  document.getElementById('btnTabImg').classList.toggle('active', tabType === 'img');
  
  // Load in viewport
  const viewport = document.getElementById('bpViewport');
  const p = projects[modalIdx];
  
  if (tabType === 'layout') {
    viewport.innerHTML = generateSystemLayoutSVG(p, modalIdx);
  } else if (tabType === 'db') {
    viewport.innerHTML = generateDatabaseSchemaSVG(p, modalIdx);
  } else if (tabType === 'img') {
    viewport.innerHTML = `<img src="${p.img}" class="bp-image-preview" alt="${p.name}">`;
  }
}

// Bind tabs clicks
document.getElementById('btnTabSys').addEventListener('click', () => switchBlueprintTab('layout'));
document.getElementById('btnTabDb').addEventListener('click', () => switchBlueprintTab('db'));
document.getElementById('btnTabImg').addEventListener('click', () => switchBlueprintTab('img'));

document.getElementById('modalClose').addEventListener('click', closeModal);
overlay.addEventListener('click', e => { if (e.target === overlay) closeModal(); });

// Keyboard browser triggers in modal
document.addEventListener('keydown', e => {
  if (!modalOpen) return;
  if (e.key === 'Escape') closeModal();
  if (e.key === 'ArrowLeft') {
    modalIdx = mod(modalIdx - 1, N);
    fillModal(modalIdx);
  }
  if (e.key === 'ArrowRight') {
    modalIdx = mod(modalIdx + 1, N);
    fillModal(modalIdx);
  }
});
</script>

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
        window.world.globeImageUrl('//unpkg.com/three-globe/example/img/earth-night.jpg');
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
  <!-- ==================== ORGANIC FLAME FOOTER ==================== -->
  <footer class="footer-section" id="contact">
    <svg class="flame-divider-svg" viewBox="0 0 1440 120" preserveAspectRatio="none">
      <path d="M0,0 C150,90 350,-40 500,60 C650,140 850,10 1000,70 C1150,130 1300,20 1440,80 L1440,120 L0,120 Z"></path>
    </svg>

    <div class="footer-main-content">
      <div class="footer-cta-box">
        <div class="flame-mascot">
          <svg viewBox="0 0 24 24">
            <path d="M12 2C10.5 5 8 7 8 10C8 12.5 10 14.5 12 17.5C14 14.5 16 12.5 16 10C16 7 13.5 5 12 2Z"></path>
          </svg>
        </div>
        <h2 class="flame-heading">Say Hi!<br>Interested in working with us?</h2>
        <a href="contact.html" class="btn-chat-cta">LETS CHAT!</a>
      </div>

      <div class="footer-links-grid">
        <div class="footer-nav-col">
          <div class="footer-nav-title">NAVIGATION</div>
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
            <li><a href="https://twitter.com" target="_blank" class="social-pill">TW</a></li>
            <li><a href="https://instagram.com" target="_blank" class="social-pill">IG</a></li>
            <li><a href="https://github.com/vivek0052" target="_blank" class="social-pill">GH</a></li>
            <li><a href="https://youtube.com" target="_blank" class="social-pill">YT</a></li>
          </ul>
          <div style="margin-top: 1rem; font-family: 'Space Grotesk', monospace, sans-serif; font-size: 0.75rem; color: #555;">
            &copy; 2026 Vivek Dandotiya — Web Designer & Developer
          </div>
        </div>
      </div>

      <div class="footer-watermark">VIVEK.</div>
    </div>
  </footer>

<!-- ==================== SENIOR FRONTEND ANIMATION & 3D TILT ENGINE ==================== -->
<script>
(function() {
  // 1. 3D Perspective Card Tilt & Dynamic Cursor Spotlight
  const tiltCards = document.querySelectorAll('.bento-card, .proj-card, .cs-index-card, .cert-card, .blog-card, .exp-item, .contact-card, .tilt-card, .proj-mini-item');
  
  tiltCards.forEach(card => {
    card.addEventListener('mousemove', (e) => {
      const rect = card.getBoundingClientRect();
      const x = e.clientX - rect.left;
      const y = e.clientY - rect.top;
      
      const centerX = rect.width / 2;
      const centerY = rect.height / 2;
      
      const rotateX = ((y - centerY) / centerY) * -6;
      const rotateY = ((x - centerX) / centerX) * 6;
      
      card.style.transform = `perspective(1000px) rotateX(${rotateX}deg) rotateY(${rotateY}deg) scale3d(1.015, 1.015, 1.015)`;
      card.style.transition = 'transform 0.1s ease-out';
      
      const isLight = document.documentElement.getAttribute('data-theme') === 'light';
      const spotColor = isLight ? 'rgba(0,0,0,0.05)' : 'rgba(184, 255, 87, 0.12)';
      card.style.backgroundImage = `radial-gradient(circle at ${x}px ${y}px, ${spotColor} 0%, transparent 65%)`;
    });

    card.addEventListener('mouseleave', () => {
      card.style.transform = 'perspective(1000px) rotateX(0deg) rotateY(0deg) scale3d(1, 1, 1)';
      card.style.transition = 'transform 0.5s cubic-bezier(0.16, 1, 0.3, 1), background-image 0.5s ease';
      card.style.backgroundImage = 'none';
    });
  });

  // 2. Magnetic Micro-Interaction Pull on Buttons & Navigation
  const magnetics = document.querySelectorAll('.btn, .btn-hire, .nav-center a, #themeToggle, .skill-pill, .social-icon, .magnetic');
  
  magnetics.forEach(el => {
    el.addEventListener('mousemove', (e) => {
      const rect = el.getBoundingClientRect();
      const x = e.clientX - (rect.left + rect.width / 2);
      const y = e.clientY - (rect.top + rect.height / 2);
      
      el.style.transform = `translate3d(${x * 0.25}px, ${y * 0.25}px, 0) scale(1.04)`;
      el.style.transition = 'transform 0.1s ease-out';
    });
    
    el.addEventListener('mouseleave', () => {
      el.style.transform = 'translate3d(0, 0, 0) scale(1)';
      el.style.transition = 'transform 0.4s cubic-bezier(0.16, 1, 0.3, 1)';
    });
  });
})();

// ==================== 3D FLYING POSTERS OGL SHADER ENGINE ====================
(function initOGLFlyingPosters() {
  function startEngine() {
    const container = document.getElementById('postersContainer');
    const canvas = document.getElementById('postersCanvas');
    if (!container || !canvas) return;

    if (typeof OGL === 'undefined' && !window.OGL && !window.ogl) {
      const script = document.createElement('script');
      script.src = 'https://cdn.jsdelivr.net/npm/ogl@0.0.103/dist/ogl.umd.js';
      script.onload = () => setTimeout(startEngine, 20);
      script.onerror = () => {
        const script2 = document.createElement('script');
        script2.src = 'https://unpkg.com/ogl';
        script2.onload = () => setTimeout(startEngine, 20);
        document.head.appendChild(script2);
      };
      document.head.appendChild(script);
      return;
    }

    const OGLObj = window.OGL || window.ogl || (typeof OGL !== 'undefined' ? OGL : null);
    if (!OGLObj) {
      setTimeout(startEngine, 50);
      return;
    }

    const { Renderer, Camera, Transform, Plane, Program, Mesh, Texture } = OGLObj;

    const items = [
      'images/varta_mockup.png',
      'images/analytics_mockup.png',
      'images/skills_mockup.png',
      'images/globe_mockup.png',
      'images/portfolio_mockup.png',
      'images/proj4.png',
      'images/proj6.png',
      'images/proj3.png',
      'images/proj2.png',
      'images/proj1.png'
    ];

    const vertexShader = `
      precision highp float;

      attribute vec3 position;
      attribute vec2 uv;
      attribute vec3 normal;

      uniform mat4 modelViewMatrix;
      uniform mat4 projectionMatrix;
      uniform mat3 normalMatrix;

      uniform float uPosition;
      uniform float uTime;
      uniform float uSpeed;
      uniform vec3 distortionAxis;
      uniform vec3 rotationAxis;
      uniform float uDistortion;

      varying vec2 vUv;
      varying vec3 vNormal;

      float PI = 3.141592653589793238;
      mat4 rotationMatrix(vec3 axis, float angle) {
          axis = normalize(axis);
          float s = sin(angle);
          float c = cos(angle);
          float oc = 1.0 - c;
          
          return mat4(
            oc * axis.x * axis.x + c,         oc * axis.x * axis.y - axis.z * s,  oc * axis.z * axis.x + axis.y * s,  0.0,
            oc * axis.x * axis.y + axis.z * s,oc * axis.y * axis.y + c,           oc * axis.y * axis.z - axis.x * s,  0.0,
            oc * axis.z * axis.x - axis.y * s,oc * axis.y * axis.z + axis.x * s,  oc * axis.z * axis.z + c,           0.0,
            0.0,                              0.0,                                0.0,                                1.0
          );
      }

      vec3 rotate(vec3 v, vec3 axis, float angle) {
        mat4 m = rotationMatrix(axis, angle);
        return (m * vec4(v, 1.0)).xyz;
      }

      float qinticInOut(float t) {
        return t < 0.5
          ? 16.0 * pow(t, 5.0)
          : -0.5 * abs(pow(2.0 * t - 2.0, 5.0)) + 1.0;
      }

      void main() {
        vUv = uv;
        
        float norm = 0.5;
        vec3 newpos = position;
        float offset = (dot(distortionAxis, position) + norm / 2.) / norm;
        float localprogress = clamp(
          (fract(uPosition * 5.0 * 0.01) - 0.01 * uDistortion * offset) / (1. - 0.01 * uDistortion),
          0.,
          2.
        );
        localprogress = qinticInOut(localprogress) * PI;
        newpos = rotate(newpos, rotationAxis, localprogress);

        gl_Position = projectionMatrix * modelViewMatrix * vec4(newpos, 1.0);
      }
    `;

    const fragmentShader = `
      precision highp float;

      uniform vec2 uImageSize;
      uniform vec2 uPlaneSize;
      uniform sampler2D tMap;

      varying vec2 vUv;

      void main() {
        vec2 imageSize = uImageSize;
        vec2 planeSize = uPlaneSize;

        float imageAspect = imageSize.x / imageSize.y;
        float planeAspect = planeSize.x / planeSize.y;
        vec2 scale = vec2(1.0, 1.0);

        if (planeAspect > imageAspect) {
            scale.x = imageAspect / planeAspect;
        } else {
            scale.y = planeAspect / imageAspect;
        }

        vec2 uv = vUv * scale + (1.0 - scale) * 0.5;

        gl_FragColor = texture2D(tMap, uv);
      }
    `;

    function lerp(p1, p2, t) {
      return p1 + (p2 - p1) * t;
    }

    function map(num, min1, max1, min2, max2, round = false) {
      const num1 = (num - min1) / (max1 - min1);
      const num2 = num1 * (max2 - min2) + min2;
      return round ? Math.round(num2) : num2;
    }

    class Media {
      constructor({ gl, geometry, scene, screen, viewport, image, length, index, planeWidth, planeHeight, distortion }) {
        this.extra = 0;
        this.gl = gl;
        this.geometry = geometry;
        this.scene = scene;
        this.screen = screen;
        this.viewport = viewport;
        this.image = image;
        this.length = length;
        this.index = index;
        this.planeWidth = planeWidth;
        this.planeHeight = planeHeight;
        this.distortion = distortion;

        this.createShader();
        this.createMesh();
        this.onResize();
      }

      createShader() {
        const texture = new Texture(this.gl, {
          generateMipmaps: false
        });

        this.program = new Program(this.gl, {
          depthTest: false,
          depthWrite: false,
          fragment: fragmentShader,
          vertex: vertexShader,
          uniforms: {
            tMap: { value: texture },
            uPosition: { value: 0 },
            uPlaneSize: { value: [0, 0] },
            uImageSize: { value: [0, 0] },
            uSpeed: { value: 0 },
            rotationAxis: { value: [0, 1, 0] },
            distortionAxis: { value: [1, 1, 0] },
            uDistortion: { value: this.distortion },
            uViewportSize: { value: [this.viewport.width, this.viewport.height] },
            uTime: { value: 0 }
          },
          cullFace: false
        });

        const img = new Image();
        img.crossOrigin = 'anonymous';
        img.src = this.image;
        img.onload = () => {
          texture.image = img;
          this.program.uniforms.uImageSize.value = [img.naturalWidth || 500, img.naturalHeight || 500];
        };
      }

      createMesh() {
        this.plane = new Mesh(this.gl, {
          geometry: this.geometry,
          program: this.program
        });
        this.plane.setParent(this.scene);
      }

      setScale() {
        this.plane.scale.x = (this.viewport.width * this.planeWidth) / this.screen.width;
        this.plane.scale.y = (this.viewport.height * this.planeHeight) / this.screen.height;

        this.plane.position.x = 0;
        this.plane.program.uniforms.uPlaneSize.value = [this.plane.scale.x, this.plane.scale.y];
      }

      onResize({ screen, viewport } = {}) {
        if (screen) this.screen = screen;
        if (viewport) {
          this.viewport = viewport;
          this.plane.program.uniforms.uViewportSize.value = [this.viewport.width, this.viewport.height];
        }
        this.setScale();

        this.padding = 4;
        this.height = this.plane.scale.y + this.padding;
        this.heightTotal = this.height * this.length;

        this.y = -this.heightTotal / 2 + (this.index + 0.5) * this.height;
      }

      update(scroll) {
        this.plane.position.y = this.y - scroll.current - this.extra;

        const position = map(this.plane.position.y, -this.viewport.height, this.viewport.height, 5, 15);

        this.program.uniforms.uPosition.value = position;
        this.program.uniforms.uTime.value += 0.04;
        this.program.uniforms.uSpeed.value = scroll.current;

        const planeHeight = this.plane.scale.y;
        const viewportHeight = this.viewport.height;

        const topEdge = this.plane.position.y + planeHeight / 2;
        const bottomEdge = this.plane.position.y - planeHeight / 2;

        if (topEdge < -viewportHeight / 2) {
          this.extra -= this.heightTotal;
        } else if (bottomEdge > viewportHeight / 2) {
          this.extra += this.heightTotal;
        }
      }
    }

    class Canvas {
      constructor({ container, canvas, items, planeWidth, planeHeight, distortion, scrollEase, cameraFov, cameraZ }) {
        this.container = container;
        this.canvas = canvas;
        this.items = items;
        this.planeWidth = planeWidth || 320;
        this.planeHeight = planeHeight || 320;
        this.distortion = distortion || 3;
        this.scroll = {
          ease: scrollEase || 0.01,
          current: 0,
          target: 0,
          last: 0
        };
        this.cameraFov = cameraFov || 49;
        this.cameraZ = cameraZ || 24;

        this.onResize = this.onResize.bind(this);
        this.onWheel = this.onWheel.bind(this);
        this.onTouchDown = this.onTouchDown.bind(this);
        this.onTouchMove = this.onTouchMove.bind(this);
        this.onTouchUp = this.onTouchUp.bind(this);
        this.update = this.update.bind(this);

        this.createRenderer();
        this.createCamera();
        this.createScene();
        this.onResize();

        this.createGeometry();
        this.createMedias();
        this.update();
        this.addEventListeners();
      }

      createRenderer() {
        this.renderer = new Renderer({
          canvas: this.canvas,
          alpha: true,
          antialias: true,
          dpr: Math.min(window.devicePixelRatio, 2)
        });
        this.gl = this.renderer.gl;
      }

      createCamera() {
        this.camera = new Camera(this.gl);
        this.camera.fov = this.cameraFov;
        this.camera.position.z = this.cameraZ;
      }

      createScene() {
        this.scene = new Transform();
      }

      createGeometry() {
        this.planeGeometry = new Plane(this.gl, {
          heightSegments: 1,
          widthSegments: 100
        });
      }

      createMedias() {
        this.medias = this.items.map((image, index) => {
          return new Media({
            gl: this.gl,
            geometry: this.planeGeometry,
            scene: this.scene,
            screen: this.screen,
            viewport: this.viewport,
            image,
            length: this.items.length,
            index,
            planeWidth: this.planeWidth,
            planeHeight: this.planeHeight,
            distortion: this.distortion
          });
        });
      }

      onResize() {
        const rect = this.container.getBoundingClientRect();
        this.screen = {
          width: rect.width || window.innerWidth,
          height: rect.height || 600
        };

        this.renderer.setSize(this.screen.width, this.screen.height);

        this.camera.perspective({
          aspect: this.gl.canvas.width / this.gl.canvas.height
        });

        const fov = (this.camera.fov * Math.PI) / 180;
        const height = 2 * Math.tan(fov / 2) * this.camera.position.z;
        const width = height * this.camera.aspect;

        this.viewport = { height, width };

        if (this.medias) {
          this.medias.forEach(media => media.onResize({ screen: this.screen, viewport: this.viewport }));
        }
      }

      onTouchDown(e) {
        this.isDown = true;
        this.scroll.position = this.scroll.current;
        this.start = e.touches ? e.touches[0].clientY : e.clientY;
      }

      onTouchMove(e) {
        if (!this.isDown) return;
        const y = e.touches ? e.touches[0].clientY : e.clientY;
        const distance = (this.start - y) * 0.1;
        this.scroll.target = this.scroll.position + distance;
      }

      onTouchUp() {
        this.isDown = false;
      }

      onWheel(e) {
        const speed = e.deltaY;
        this.scroll.target += speed * 0.005;
      }

      update() {
        this.scroll.current = lerp(this.scroll.current, this.scroll.target, this.scroll.ease);

        if (this.medias) {
          this.medias.forEach(media => media.update(this.scroll));
        }
        this.renderer.render({ scene: this.scene, camera: this.camera });
        this.scroll.last = this.scroll.current;
        requestAnimationFrame(this.update);
      }

      addEventListeners() {
        window.addEventListener('resize', this.onResize);
        this.container.addEventListener('wheel', this.onWheel, { passive: true });

        this.container.addEventListener('mousedown', this.onTouchDown);
        window.addEventListener('mousemove', this.onTouchMove);
        window.addEventListener('mouseup', this.onTouchUp);

        this.container.addEventListener('touchstart', this.onTouchDown, { passive: true });
        window.addEventListener('touchmove', this.onTouchMove, { passive: true });
        window.addEventListener('touchend', this.onTouchUp);
      }
    }

    new Canvas({
      container,
      canvas,
      items,
      planeWidth: 320,
      planeHeight: 320,
      distortion: 3,
      scrollEase: 0.01,
      cameraFov: 49,
      cameraZ: 24
    });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', startEngine);
  } else {
    startEngine();
  }
})();
</script>

<!-- ==================== INTERACTIVE DEFORMABLE JELLY GRID MESH ==================== -->
<script>
(function() {
  const canvas = document.createElement('canvas');
  canvas.id = 'jelly-grid-canvas';
  canvas.style.cssText = 'position:fixed;top:0;left:0;width:100vw;height:100vh;pointer-events:none;z-index:0;';
  document.body.prepend(canvas);

  const ctx = canvas.getContext('2d');
  let width = canvas.width = window.innerWidth;
  let height = canvas.height = window.innerHeight;

  const GRID_SIZE = 120;
  let cols, rows, nodes;

  function initGrid() {
    cols = Math.ceil(width / GRID_SIZE) + 2;
    rows = Math.ceil(height / GRID_SIZE) + 2;
    nodes = [];

    for (let r = 0; r <= rows; r++) {
      nodes[r] = [];
      for (let c = 0; c <= cols; c++) {
        const bx = c * GRID_SIZE;
        const by = r * GRID_SIZE;
        nodes[r][c] = {
          baseX: bx,
          baseY: by,
          x: bx,
          y: by,
          vx: 0,
          vy: 0
        };
      }
    }
  }

  initGrid();

  window.addEventListener('resize', () => {
    width = canvas.width = window.innerWidth;
    height = canvas.height = window.innerHeight;
    initGrid();
  });

  let mouseX = -1000;
  let mouseY = -1000;
  let prevMouseX = -1000;
  let prevMouseY = -1000;

  document.addEventListener('mousemove', (e) => {
    mouseX = e.clientX;
    mouseY = e.clientY;
  });

  document.addEventListener('touchmove', (e) => {
    if (e.touches.length > 0) {
      mouseX = e.touches[0].clientX;
      mouseY = e.touches[0].clientY;
    }
  }, { passive: true });

  const EFFECT_RADIUS = 240;
  const FORCE_FACTOR = 0.55;
  const SPRING = 0.045;
  const DAMPING = 0.84;

  function render() {
    ctx.clearRect(0, 0, width, height);

    const isLight = document.documentElement.getAttribute('data-theme') === 'light';
    const baseLineColor = isLight ? 'rgba(0, 0, 0, 0.08)' : 'rgba(255, 255, 255, 0.095)';
    const glowColor = isLight ? 'rgba(0, 0, 0, 0.65)' : 'rgba(184, 255, 87, 0.85)';

    const mouseVx = mouseX - prevMouseX;
    const mouseVy = mouseY - prevMouseY;
    prevMouseX = mouseX;
    prevMouseY = mouseY;

    for (let r = 0; r <= rows; r++) {
      for (let c = 0; c <= cols; c++) {
        const n = nodes[r][c];
        const dx = n.x - mouseX;
        const dy = n.y - mouseY;
        const dist = Math.hypot(dx, dy);

        if (dist < EFFECT_RADIUS && dist > 0) {
          const power = Math.pow((1 - dist / EFFECT_RADIUS), 2);
          const pushX = (dx / dist) * power * 70 + mouseVx * power * FORCE_FACTOR;
          const pushY = (dy / dist) * power * 70 + mouseVy * power * FORCE_FACTOR;

          n.vx += pushX * 0.12;
          n.vy += pushY * 0.12;
        }

        const springX = (n.baseX - n.x) * SPRING;
        const springY = (n.baseY - n.y) * SPRING;

        n.vx += springX;
        n.vy += springY;
        n.vx *= DAMPING;
        n.vy *= DAMPING;

        n.x += n.vx;
        n.y += n.vy;
      }
    }

    for (let r = 0; r <= rows; r++) {
      ctx.beginPath();
      ctx.moveTo(nodes[r][0].x, nodes[r][0].y);

      for (let c = 0; c < cols; c++) {
        const n1 = nodes[r][c];
        const n2 = nodes[r][c + 1];
        const midX = (n1.x + n2.x) / 2;
        const midY = (n1.y + n2.y) / 2;
        ctx.quadraticCurveTo(n1.x, n1.y, midX, midY);
      }

      ctx.strokeStyle = baseLineColor;
      ctx.lineWidth = 1;
      ctx.stroke();
    }

    for (let c = 0; c <= cols; c++) {
      ctx.beginPath();
      ctx.moveTo(nodes[0][c].x, nodes[0][c].y);

      for (let r = 0; r < rows; r++) {
        const n1 = nodes[r][c];
        const n2 = nodes[r + 1][c];
        const midX = (n1.x + n2.x) / 2;
        const midY = (n1.y + n2.y) / 2;
        ctx.quadraticCurveTo(n1.x, n1.y, midX, midY);
      }

      ctx.strokeStyle = baseLineColor;
      ctx.lineWidth = 1;
      ctx.stroke();
    }

    if (mouseX > 0 && mouseY > 0) {
      const spotGrad = ctx.createRadialGradient(mouseX, mouseY, 10, mouseX, mouseY, EFFECT_RADIUS);
      spotGrad.addColorStop(0, isLight ? 'rgba(0, 0, 0, 0.05)' : 'rgba(184, 255, 87, 0.08)');
      spotGrad.addColorStop(1, 'rgba(0, 0, 0, 0)');
      ctx.fillStyle = spotGrad;
      ctx.beginPath();
      ctx.arc(mouseX, mouseY, EFFECT_RADIUS, 0, Math.PI * 2);
      ctx.fill();

      for (let r = 0; r <= rows; r++) {
        ctx.beginPath();
        let active = false;

        for (let c = 0; c < cols; c++) {
          const n1 = nodes[r][c];
          const n2 = nodes[r][c + 1];
          const midX = (n1.x + n2.x) / 2;
          const midY = (n1.y + n2.y) / 2;
          const dist = Math.hypot(midX - mouseX, midY - mouseY);

          if (dist < EFFECT_RADIUS + 30) {
            if (!active) {
              ctx.moveTo(n1.x, n1.y);
              active = true;
            }
            ctx.quadraticCurveTo(n1.x, n1.y, midX, midY);
          } else {
            active = false;
          }
        }
        if (active) {
          ctx.strokeStyle = glowColor;
          ctx.lineWidth = 1.8;
          ctx.stroke();
        }
      }

      for (let c = 0; c <= cols; c++) {
        ctx.beginPath();
        let active = false;

        for (let r = 0; r < rows; r++) {
          const n1 = nodes[r][c];
          const n2 = nodes[r + 1][c];
          const midX = (n1.x + n2.x) / 2;
          const midY = (n1.y + n2.y) / 2;
          const dist = Math.hypot(midX - mouseX, midY - mouseY);

          if (dist < EFFECT_RADIUS + 30) {
            if (!active) {
              ctx.moveTo(n1.x, n1.y);
              active = true;
            }
            ctx.quadraticCurveTo(n1.x, n1.y, midX, midY);
          } else {
            active = false;
          }
        }
        if (active) {
          ctx.strokeStyle = glowColor;
          ctx.lineWidth = 1.8;
          ctx.stroke();
        }
      }
    }

    requestAnimationFrame(render);
  }

  requestAnimationFrame(render);
})();
</script>
<script src="js/scroll-expand.js"></script>
</body>
</html>