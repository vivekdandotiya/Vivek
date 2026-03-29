import sys

with open('index.html', 'r', encoding='utf-8') as f:
    text = f.read()

# Make the dot look "little big and looks like a dot"
text = text.replace("el.style.width = '8px';", "el.style.width = '14px';")
text = text.replace("el.style.height = '8px';", "el.style.height = '14px';")
text = text.replace("el.style.background = 'var(--red)';", "el.style.background = 'var(--red)';\n    el.style.border = '2.5px solid #fff';")
text = text.replace("el.style.boxShadow = '0 0 10px var(--red)';", "el.style.boxShadow = '0 0 16px rgba(255, 50, 50, 0.8), inset 0 0 4px rgba(0,0,0,0.5)';")

# Update coordinates and Map URL
text = text.replace("{ lat: 26.5000, lng: 78.0000 }", "{ lat: 26.4947, lng: 77.9944 }")
text = text.replace("Chambal,%20Madhya%20Pradesh", "Morena,%20Madhya%20Pradesh")
text = text.replace("📍 Chambal, MP", "📍 Morena, MP")

with open('index.html', 'w', encoding='utf-8') as f:
    f.write(text)

print("Dot updated!")
