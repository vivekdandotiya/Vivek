import os
import glob

# The old block exactly as we injected it:
old_css_variables = """[data-theme='light'] {
  --bg: #f8fafc;
  --surface: #ffffff;
  --surface2: #f1f5f9;
  --border: #e2e8f0;
  --border2: #cbd5e1;
  --text: #0f172a;
  --text2: #334155;
  --text3: #64748b;
  --accent: #65a30d;
}"""

# The new block with darker borders and off-white background:
new_css_variables = """[data-theme='light'] {
  --bg: #fafafa;
  --surface: #ffffff;
  --surface2: #f1f5f9;
  --border: #d1d5db; /* Darker border for visibility */
  --border2: #9ca3af; /* Even darker for hover states */
  --text: #0f172a;
  --text2: #334155;
  --text3: #64748b;
  --accent: #65a30d;
}

/* Add an elegant fine-line grid background to the light mode body */
[data-theme='light'] body {
  background-color: var(--bg);
  background-image: 
    linear-gradient(rgba(0,0,0,0.03) 1px, transparent 1px),
    linear-gradient(90deg, rgba(0,0,0,0.03) 1px, transparent 1px);
  background-size: 32px 32px;
  background-attachment: fixed;
}

/* Add drop-shadows to ALL major cards to make them pop off the background */
[data-theme='light'] .bento-card, 
[data-theme='light'] .proj-card, 
[data-theme='light'] .cert-card, 
[data-theme='light'] .blog-card, 
[data-theme='light'] .timeline-item {
  box-shadow: 0 4px 20px rgba(0,0,0,0.03);
  background: var(--surface);
}

[data-theme='light'] .bento-card:hover, 
[data-theme='light'] .proj-card:hover, 
[data-theme='light'] .cert-card:hover, 
[data-theme='light'] .blog-card:hover {
  box-shadow: 0 8px 30px rgba(0,0,0,0.06);
}"""

html_files = glob.glob('*.html')

for file in html_files:
    try:
        with open(file, 'r', encoding='utf-8') as f:
            content = f.read()

        if old_css_variables in content:
            content = content.replace(old_css_variables, new_css_variables)
            with open(file, 'w', encoding='utf-8') as f:
                f.write(content)
            print(f"Updated {file} - Fixed card borders and added grid background")
        else:
            print(f"Old CSS block not found entirely in {file}. Check manually if needed.")
    except Exception as e:
        print(f"Error on {file}: {e}")
