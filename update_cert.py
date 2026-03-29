import sys

with open('certifications.html', 'r', encoding='utf-8') as f:
    text = f.read()

# Replace CSS
old_css = """/* ─── 3D FLIP CARD ─── */
.cert-card{
  perspective:1000px;
  height:320px;
  cursor:none;
}
.cert-card-inner{
  position:relative;width:100%;height:100%;
  transform-style:preserve-3d;
  transition:transform .7s cubic-bezier(.25,.8,.25,1);
  transform-origin:center center;
}
.cert-card:hover .cert-card-inner{
  transform:rotateY(180deg);
}

/* Front face */
.cert-front,.cert-back{
  position:absolute;inset:0;
  backface-visibility:hidden;
  border-radius:20px;
  overflow:hidden;
}
.cert-front{
  background:var(--surface);
  border:1px solid var(--border2);
  display:flex;flex-direction:column;
  padding:1.8rem;
  transition:border-color .3s;
}
.cert-card:hover .cert-front{border-color:rgba(184,255,87,.3);}

/* Front: decorative 3D corner accents */
.cert-front::before{
  content:'';position:absolute;top:0;left:0;right:0;height:3px;
  background:linear-gradient(90deg,transparent,var(--accent),transparent);
  opacity:.5;
}
.cert-front::after{
  content:'';position:absolute;
  top:-60px;right:-60px;
  width:150px;height:150px;
  border-radius:50%;
  background:radial-gradient(circle,rgba(184,255,87,.06),transparent 70%);
}

.cf-top{display:flex;align-items:flex-start;justify-content:space-between;margin-bottom:auto;}
.cf-icon{
  width:52px;height:52px;border-radius:14px;
  background:var(--surface2);border:1px solid var(--border2);
  display:flex;align-items:center;justify-content:center;
  font-size:1.4rem;
  transition:transform .4s, box-shadow .4s;
}
.cert-card:hover .cf-icon{
  transform:rotate(8deg) scale(1.05);
  box-shadow:0 8px 24px rgba(184,255,87,.15);
}
.cf-num{
  font-family:'Space Grotesk',sans-serif;font-weight:700;font-size:1.8rem;
  color:transparent;-webkit-text-stroke:1px rgba(255,255,255,.1);
  letter-spacing:-.04em;line-height:1;
}

.cf-body{margin-top:1.2rem;}
.cf-issuer{font-size:.58rem;letter-spacing:.2em;text-transform:uppercase;color:var(--accent);margin-bottom:.4rem;}
.cf-title{
  font-family:'Space Grotesk',sans-serif;font-weight:700;
  font-size:1.05rem;letter-spacing:-.02em;line-height:1.3;
  margin-bottom:.6rem;
}
.cf-date{font-size:.62rem;color:var(--text3);}

.cf-bottom{
  margin-top:1.2rem;padding-top:1rem;
  border-top:1px solid var(--border);
  display:flex;align-items:center;justify-content:space-between;
}
.cf-tags{display:flex;gap:.3rem;flex-wrap:wrap;}
.cf-tag{
  font-size:.52rem;letter-spacing:.08em;text-transform:uppercase;
  border:1px solid var(--border2);padding:.15rem .5rem;color:var(--text3);border-radius:4px;
}
.cf-hint{font-size:.55rem;color:var(--text3);display:flex;align-items:center;gap:.3rem;}
.cf-hint-arrow{
  width:20px;height:20px;border-radius:50%;border:1px solid var(--border2);
  display:flex;align-items:center;justify-content:center;font-size:.6rem;
  animation:bounce-x .8s ease infinite alternate;
}
@keyframes bounce-x{from{transform:translateX(0)}to{transform:translateX(3px)}}

/* Back face */
.cert-back{
  background:linear-gradient(135deg,#0f1a08,#0a1408);
  border:1px solid rgba(184,255,87,.25);
  transform:rotateY(180deg);
  display:flex;flex-direction:column;
  padding:1.8rem;
}
.cert-back::before{
  content:'';position:absolute;inset:0;
  background:
    radial-gradient(circle at 20% 20%,rgba(184,255,87,.08),transparent 50%),
    radial-gradient(circle at 80% 80%,rgba(184,255,87,.05),transparent 50%);
  pointer-events:none;
}

.cb-top{display:flex;align-items:center;gap:.7rem;margin-bottom:1.2rem;}
.cb-badge{
  font-size:.55rem;letter-spacing:.15em;text-transform:uppercase;
  background:rgba(184,255,87,.12);color:var(--accent);
  padding:.3rem .8rem;border-radius:999px;border:1px solid rgba(184,255,87,.2);
}
.cb-issuer{font-size:.6rem;letter-spacing:.18em;text-transform:uppercase;color:rgba(184,255,87,.6);}
.cb-title{
  font-family:'Space Grotesk',sans-serif;font-weight:700;
  font-size:1.1rem;letter-spacing:-.02em;line-height:1.3;
  color:#fff;margin-bottom:.8rem;
}
.cb-desc{font-size:.75rem;color:rgba(255,255,255,.55);line-height:1.8;flex:1;}
.cb-actions{
  margin-top:1rem;display:flex;gap:.6rem;
}
.cb-btn{
  flex:1;padding:.6rem 1rem;border-radius:999px;font-size:.65rem;
  font-weight:600;letter-spacing:.06em;text-transform:uppercase;
  text-decoration:none;text-align:center;transition:all .2s;cursor:none;
  display:flex;align-items:center;justify-content:center;gap:.4rem;
}
.cb-btn-primary{background:var(--accent);color:#000;}
.cb-btn-primary:hover{background:#d0ff6e;transform:translateY(-1px);}
.cb-btn-ghost{background:rgba(255,255,255,.06);color:#fff;border:1px solid rgba(255,255,255,.12);}
.cb-btn-ghost:hover{background:rgba(255,255,255,.12);}

/* ─── FEATURED CARD — spans 2 cols ─── */
.cert-card.featured{grid-column:span 2;height:auto;}
.cert-card.featured .cert-card-inner{height:240px;}
.cert-card.featured .cert-front{flex-direction:row;align-items:center;gap:2rem;}
.cert-card.featured .cf-body{flex:1;}
.cert-card.featured .cf-top{flex-direction:column;align-items:flex-end;gap:.8rem;}
.cert-card.featured .cf-bottom{display:none;}
.cert-card.featured .cert-back{flex-direction:row;align-items:center;gap:2rem;}
.cert-card.featured .cb-desc{flex:none;}
.cert-card.featured .cb-actions{flex-direction:column;margin-top:0;min-width:140px;}

/* ─── TALL CARD — spans 2 rows ─── */
.cert-card.tall{grid-row:span 2;height:auto;}
.cert-card.tall .cert-card-inner{height:660px;}"""

new_css = """/* ─── FLAT ELEGANT CARD ─── */
.cert-card{
  height: auto;
  cursor:none;
  background:var(--surface);
  border:1px solid var(--border2);
  border-radius:16px;
  overflow:hidden;
  transition:transform .3s, border-color .3s, box-shadow .3s;
  display:flex;
  flex-direction:column;
}
.cert-card:hover{
  transform:translateY(-5px);
  border-color:rgba(184,255,87,.3);
  box-shadow:0 12px 30px rgba(0,0,0,.5);
}
.cert-image-wrap{
  position:relative;
  width:100%;
  aspect-ratio:1.4;
  background:var(--surface2);
  border-bottom:1px solid var(--border2);
  overflow:hidden;
  display:flex;align-items:center;justify-content:center;
}
.cert-image{
  width:100%;height:100%;object-fit:contain;background:#f8f9fa;
  transition:transform .5s cubic-bezier(.16,1,.3,1);
}
.cert-card:hover .cert-image{
  transform:scale(1.05);
}
.cert-no-image{
  font-size:3rem;opacity:.3;
}
.cert-zoom-hint{
  position:absolute;inset:0;
  background:rgba(10,10,10,.6);
  backdrop-filter:blur(4px);
  display:flex;align-items:center;justify-content:center;
  font-size:.75rem;font-weight:600;letter-spacing:.05em;
  color:#fff;
  opacity:0;transition:opacity .3s;
}
.cert-image-wrap:hover .cert-zoom-hint{
  opacity:1;
}
.cert-details{
  padding:1.5rem;
  display:flex;flex-direction:column;flex:1;
}
.cert-issuer{
  font-size:.6rem;letter-spacing:.2em;text-transform:uppercase;
  color:var(--accent);margin-bottom:.5rem;
}
.cert-title{
  font-family:'Space Grotesk',sans-serif;font-weight:700;
  font-size:1.15rem;letter-spacing:-.02em;line-height:1.3;
  margin-bottom:.8rem;color:#fff;
}
.cert-desc{
  font-size:.8rem;color:var(--text2);margin-bottom:1.5rem;line-height:1.7;
}
.cert-meta{
  display:flex;align-items:center;gap:.5rem;
  font-size:.7rem;color:var(--text3);margin-bottom:1.5rem;
  flex-wrap:wrap;
}
.cert-dot{color:var(--border2);}
.cf-tag{
  font-size:.52rem;letter-spacing:.08em;text-transform:uppercase;
  border:1px solid var(--border2);padding:.15rem .5rem;color:var(--text3);border-radius:4px;
}
.cert-actions{
  margin-top:auto;
  padding-top:1.2rem;border-top:1px solid var(--border);
}
.cert-link-btn{
  display:inline-flex;align-items:center;gap:.4rem;
  font-size:.7rem;font-weight:600;letter-spacing:.05em;color:#fff;
  text-decoration:none;transition:color .2s;
}
.cert-link-btn:hover{color:var(--accent);}

/* ─── FEATURED CARD — spans 2 cols ─── */
.cert-card.featured{
  grid-column:span 2;
  flex-direction:row;
}
.cert-card.featured .cert-image-wrap{
  width:50%;
  aspect-ratio:auto;
  border-bottom:none;
  border-right:1px solid var(--border2);
}
.cert-card.featured .cert-details{
  width:50%;
  padding:2.5rem;
}

/* ─── TALL CARD — no longer using tall grid span ─── */
.cert-card.tall{
  grid-row:span 1;
}"""

old_js = """    const photoFront = c.photo
      ? `<img src="${c.photo}" style="position:absolute;inset:0;width:100%;height:100%;object-fit:cover;opacity:.15;border-radius:20px;" loading="lazy">`
      : '';

    card.innerHTML = `
      <div class="cert-card-inner">
        <!-- FRONT -->
        <div class="cert-front">
          ${photoFront}
          <div class="cf-top">
            <div class="cf-icon">${c.icon}</div>
            <div class="cf-num">${c.num}</div>
          </div>
          <div class="cf-body">
            <div class="cf-issuer">${c.issuer}</div>
            <div class="cf-title">${c.title}</div>
            <div class="cf-date">${c.date}</div>
          </div>
          <div class="cf-bottom">
            <div class="cf-tags">${c.tags.map(t=>`<span class="cf-tag">${t}</span>`).join('')}</div>
            <div class="cf-hint">flip <div class="cf-hint-arrow">→</div></div>
          </div>
        </div>
        <!-- BACK -->
        <div class="cert-back">
          <div class="cb-top">
            <span class="cb-badge">${c.category}</span>
            <span class="cb-issuer">${c.issuer}</span>
          </div>
          <div class="cb-title">${c.title}</div>
          <div class="cb-desc">${c.desc}</div>
          <div class="cb-actions">
            <a href="${c.link}" target="_blank" class="cb-btn cb-btn-primary">↗ View Certificate</a>
            ${c.photo?`<button class="cb-btn cb-btn-ghost view-photo-btn" data-title="${c.title}" data-issuer="${c.issuer}" data-photo="${c.photo}">🖼 View Photo</button>`:''}
          </div>
        </div>
      </div>`;"""

new_js = """    card.innerHTML = `
      <div class="cert-image-wrap ${c.photo ? 'view-photo-btn' : ''}" data-title="${c.title}" data-issuer="${c.issuer}" data-photo="${c.photo}">
        ${c.photo ? '<img src="' + c.photo + '" class="cert-image" alt="Certificate" loading="lazy">' : '<div class="cert-no-image">' + c.icon + '</div>'}
        ${c.photo ? '<div class="cert-zoom-hint">🔍 View Photo</div>' : ''}
      </div>
      <div class="cert-details">
        <div class="cert-issuer">${c.issuer}</div>
        <h3 class="cert-title">${c.title}</h3>
        <p class="cert-desc">${c.desc}</p>
        <div class="cert-meta">
          <span class="cert-date">${c.date}</span>
          <span class="cert-dot">•</span>
          <span class="cert-cat">${c.category}</span>
        </div>
        <div class="cert-meta" style="margin-bottom:0;">
          ${c.tags.map(t=>'<span class="cf-tag">' + t + '</span>').join('')}
        </div>
        <div class="cert-actions">
          <a href="${c.link}" target="_blank" class="cert-link-btn">Verify Credential ↗</a>
        </div>
      </div>`;"""

old_data = """const CERTS = [
  {
    num:'01', icon:'⚛', issuer:'Meta', title:'React Basics',
    desc:'Fundamentals of React including components, props, state, hooks and building interactive UIs with modern JavaScript patterns.',
    tags:['React','JavaScript','Hooks'], date:'Jan 2024', category:'Frontend',
    link:'#', photo:'', featured:true,
  },
  {
    num:'02', icon:'🌐', issuer:'freeCodeCamp', title:'Responsive Web Design',
    desc:'HTML5, CSS3, Flexbox, CSS Grid and mobile-first responsive design — 300 hours of coursework and real projects.',
    tags:['HTML','CSS','Responsive'], date:'Mar 2023', category:'Frontend',
    link:'#', photo:'',
  },
  {
    num:'03', icon:'🔥', issuer:'Udemy', title:'JavaScript — Complete Guide',
    desc:'Modern JavaScript from fundamentals to advanced: ES6+, async/await, closures, OOP and DOM manipulation.',
    tags:['JavaScript','ES6+','OOP'], date:'Jun 2023', category:'JavaScript',
    link:'#', photo:'', tall:true,
  },
  {
    num:'04', icon:'🎨', issuer:'Google', title:'UX Design Certificate',
    desc:'End-to-end UX design process — empathising, defining, ideating, wireframing, prototyping and usability testing.',
    tags:['UX','Figma','Design'], date:'Sep 2023', category:'Design',
    link:'#', photo:'',
  },
  {
    num:'05', icon:'▲', issuer:'Vercel', title:'Next.js — App Router',
    desc:'Server components, App Router, data fetching strategies, streaming and deployment on the Vercel edge network.',
    tags:['Next.js','React','SSR'], date:'Feb 2024', category:'Frontend',
    link:'#', photo:'',
  },
  {
    num:'06', icon:'🔷', issuer:'Microsoft', title:'TypeScript Fundamentals',
    desc:'Static typing, interfaces, generics, decorators and TypeScript integration with modern frontend frameworks.',
    tags:['TypeScript','JavaScript'], date:'Apr 2024', category:'JavaScript',
    link:'#', photo:'',
  },"""

new_data = """const CERTS = [
  {
    num:'01', icon:'⚛', issuer:'Meta', title:'React Basics',
    desc:'Fundamentals of React including components, props, state, hooks and building interactive UIs with modern JavaScript patterns.',
    tags:['React','JavaScript','Hooks'], date:'Jan 2024', category:'Frontend',
    link:'#', photo:'images/cert1_real.png', featured:true,
  },
  {
    num:'02', icon:'🌐', issuer:'freeCodeCamp', title:'Responsive Web Design',
    desc:'HTML5, CSS3, Flexbox, CSS Grid and mobile-first responsive design — 300 hours of coursework and real projects.',
    tags:['HTML','CSS','Responsive'], date:'Mar 2023', category:'Frontend',
    link:'#', photo:'images/cert2_real.png',
  },
  {
    num:'03', icon:'🔥', issuer:'Udemy', title:'JavaScript — Complete Guide',
    desc:'Modern JavaScript from fundamentals to advanced: ES6+, async/await, closures, OOP and DOM manipulation.',
    tags:['JavaScript','ES6+','OOP'], date:'Jun 2023', category:'JavaScript',
    link:'#', photo:'images/cert3_real.png', tall:true,
  },
  {
    num:'04', icon:'🎨', issuer:'Google', title:'UX Design Certificate',
    desc:'End-to-end UX design process — empathising, defining, ideating, wireframing, prototyping and usability testing.',
    tags:['UX','Figma','Design'], date:'Sep 2023', category:'Design',
    link:'#', photo:'images/cert4_real.png',
  },
  {
    num:'05', icon:'▲', issuer:'Vercel', title:'Next.js — App Router',
    desc:'Server components, App Router, data fetching strategies, streaming and deployment on the Vercel edge network.',
    tags:['Next.js','React','SSR'], date:'Feb 2024', category:'Frontend',
    link:'#', photo:'images/cert5_real.png',
  },
  {
    num:'06', icon:'🔷', issuer:'Microsoft', title:'TypeScript Fundamentals',
    desc:'Static typing, interfaces, generics, decorators and TypeScript integration with modern frontend frameworks.',
    tags:['TypeScript','JavaScript'], date:'Apr 2024', category:'JavaScript',
    link:'#', photo:'images/cert6_real.png',
  },"""

num_replaced = 0
if old_css in text:
    text = text.replace(old_css, new_css)
    num_replaced += 1
if old_js in text:
    text = text.replace(old_js, new_js)
    num_replaced += 1
if old_data in text:
    text = text.replace(old_data, new_data)
    num_replaced += 1
    
with open('certifications.html', 'w', encoding='utf-8') as f:
    f.write(text)

print(f"Done replacing. Replaced {num_replaced} chunks.")
