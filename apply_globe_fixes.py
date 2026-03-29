import sys

with open('index.html', 'r', encoding='utf-8') as f:
    text = f.read()

# 1. Update Coordinates
text = text.replace('{ lat: 23.2599, lng: 77.4126 }', '{ lat: 26.5000, lng: 78.0000 }')

# 2. Update Texture to Night Earth
text = text.replace('earth-blue-marble.jpg', 'earth-night.jpg')
text = text.replace("atmosphereColor('lightskyblue')", "atmosphereColor('rgba(50, 100, 255, 0.5)')")

# 3. Update Map URL
old_map_url = "'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14664.120614487438!2d77.4126!3d23.2599!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e1!3m2!1sen!2sin!4v1700000000000!5m2!1sen!2sin'"
new_map_url = "'https://maps.google.com/maps?q=Chambal,%20Madhya%20Pradesh&t=k&z=10&ie=UTF8&iwloc=&output=embed'"
if old_map_url in text:
    text = text.replace(old_map_url, new_map_url)
else:
    print("Warning: Map URL not matched exactly")

# 4. Update Animation Timings
text = text.replace('altitude: 0.01 }, 1500)', 'altitude: 0.01 }, 2800)')
text = text.replace('}, 1400)', '}, 2650)')

text = text.replace('altitude: 2.5 }, 1500)', 'altitude: 2.5 }, 2000)')
text = text.replace('}, 600)', '}, 800)')
text = text.replace('transition:opacity 0.8s ease;', 'transition:opacity 1.2s ease;')

# Update local label
text = text.replace('📍 Madhya Pradesh, IN', '📍 Chambal, MP')

with open('index.html', 'w', encoding='utf-8') as f:
    f.write(text)

print("Updated globe parameters!")
