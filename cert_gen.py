from PIL import Image, ImageDraw, ImageFont
import os
import random

certs = [
    {"file": "cert1_real.png", "issuer": "Meta", "title": "React Basics", "date": "Jan 2024", "id": "CERT-MT-01"},
    {"file": "cert2_real.png", "issuer": "freeCodeCamp", "title": "Responsive Web Design", "date": "Mar 2023", "id": "CERT-FCC-02"},
    {"file": "cert3_real.png", "issuer": "Udemy", "title": "JavaScript — Complete Guide", "date": "Jun 2023", "id": "CERT-UD-03"},
    {"file": "cert4_real.png", "issuer": "Google", "title": "UX Design Certificate", "date": "Sep 2023", "id": "CERT-GG-04"},
    {"file": "cert5_real.png", "issuer": "Vercel", "title": "Next.js — App Router", "date": "Feb 2024", "id": "CERT-VC-05"},
    {"file": "cert6_real.png", "issuer": "Microsoft", "title": "TypeScript Fundamentals", "date": "Apr 2024", "id": "CERT-MS-06"}
]

name = "Vivek Dandotiya"
width, height = 1200, 850
margin = 40

# Try to load standard fonts, fallback to default
try:
    font_title = ImageFont.truetype("arialbd.ttf", 60)
    font_subtitle = ImageFont.truetype("arial.ttf", 36)
    font_name = ImageFont.truetype("georgiab.ttf", 80)
    font_issuer = ImageFont.truetype("arial.ttf", 50)
    font_small = ImageFont.truetype("arial.ttf", 24)
except IOError:
    # If standard fonts missing, just use default (it won't look as nice, but will work)
    print("Warning: Standard fonts not found, using default.")
    font_title = ImageFont.load_default()
    font_subtitle = ImageFont.load_default()
    font_name = ImageFont.load_default()
    font_issuer = ImageFont.load_default()
    font_small = ImageFont.load_default()

os.makedirs("images", exist_ok=True)

def draw_fake_qr(draw, x_start, y_start, size=100):
    cell_size = size // 21  # typical QR is 21x21 modules
    actual_size = cell_size * 21
    draw.rectangle([x_start, y_start, x_start+actual_size, y_start+actual_size], fill=(255,255,255))
    
    # Draw random noise
    for row in range(21):
        for col in range(21):
            if random.random() > 0.45:
                x = x_start + col * cell_size
                y = y_start + row * cell_size
                draw.rectangle([x, y, x+cell_size, y+cell_size], fill=(0,0,0))
                
    # Function to draw the distinctive corner squares (position boxes)
    def draw_qr_corner(cx, cy):
        # Outer black box
        draw.rectangle([cx, cy, cx+7*cell_size, cy+7*cell_size], fill=(0,0,0))
        # Inner white box
        draw.rectangle([cx+cell_size, cy+cell_size, cx+6*cell_size, cy+6*cell_size], fill=(255,255,255))
        # Inner black square
        draw.rectangle([cx+2*cell_size, cy+2*cell_size, cx+5*cell_size, cy+5*cell_size], fill=(0,0,0))
        
    draw_qr_corner(x_start, y_start) # Top-left
    draw_qr_corner(x_start + (14*cell_size), y_start) # Top-right
    draw_qr_corner(x_start, y_start + (14*cell_size)) # Bottom-left


for c in certs:
    img = Image.new('RGB', (width, height), color=(250, 250, 245))
    draw = ImageDraw.Draw(img)
    
    # Draw double border
    draw.rectangle([margin, margin, width-margin, height-margin], outline=(100, 100, 100), width=10)
    draw.rectangle([margin+15, margin+15, width-margin-15, height-margin-15], outline=(180, 150, 80), width=3)
    
    # Internal frame
    draw.rectangle([margin+40, margin+40, width-margin-40, height-margin-40], outline=(220, 220, 210), width=1)
    
    # Logo / Issuer Header
    text_issuer = c['issuer']
    bbox_issuer = draw.textbbox((0, 0), text_issuer, font=font_issuer)
    w_issuer = bbox_issuer[2] - bbox_issuer[0]
    draw.text(((width - w_issuer) / 2, 120), text_issuer, font=font_issuer, fill=(40, 40, 40))
    
    # Title
    text_c = "CERTIFICATE OF COMPLETION"
    bbox_c = draw.textbbox((0, 0), text_c, font=font_title)
    w_c = bbox_c[2] - bbox_c[0]
    draw.text(((width - w_c) / 2, 230), text_c, font=font_title, fill=(50, 60, 100))
    
    # Subtitle
    text_sub = "This is to certify that"
    bbox_sub = draw.textbbox((0, 0), text_sub, font=font_subtitle)
    w_sub = bbox_sub[2] - bbox_sub[0]
    draw.text(((width - w_sub) / 2, 320), text_sub, font=font_subtitle, fill=(100, 100, 100))
    
    # Name
    bbox_name = draw.textbbox((0, 0), name, font=font_name)
    w_name = bbox_name[2] - bbox_name[0]
    draw.text(((width - w_name) / 2, 400), name, font=font_name, fill=(20, 20, 20))
    
    # Line under name
    draw.line([(width/2 - w_name/2 - 20, 490), (width/2 + w_name/2 + 20, 490)], fill=(180, 150, 80), width=3)
    
    # Course info
    text_course = f"has successfully completed the program\\n\\\"{c['title']}\\\""
    lines = text_course.split("\\n")
    y_offset = 540
    for line in lines:
        bbox_l = draw.textbbox((0,0), line, font=font_subtitle)
        w_l = bbox_l[2] - bbox_l[0]
        draw.text(((width - w_l) / 2, y_offset), line, font=font_subtitle, fill=(80, 80, 80))
        y_offset += 50
    
    # Date (Moved slightly to right)
    text_date = f"Date: {c['date']}"
    draw.text((margin+230, height-margin-120), text_date, font=font_small, fill=(60, 60, 60))
    
    # Signature line (Moved to right)
    draw.line([(margin+230, height-margin-80), (margin+430, height-margin-80)], fill=(0,0,0), width=1)
    
    # Draw Fake QR Code securely in bottom left corner
    qr_x = margin + 80
    qr_y = height - margin - 150
    draw_fake_qr(draw, qr_x, qr_y, size=90)
    
    
    
    # Seal placeholder
    seal_r = 70
    seal_x = width - margin - 150
    seal_y = height - margin - 150
    draw.ellipse([seal_x-seal_r, seal_y-seal_r, seal_x+seal_r, seal_y+seal_r], fill=(200, 170, 60), outline=(150, 120, 40), width=2)
    draw.ellipse([seal_x-seal_r+10, seal_y-seal_r+10, seal_x+seal_r-10, seal_y+seal_r-10], outline=(255, 230, 150), width=2)
    
    seal_text = "OFFICIAL"
    bbox_st = draw.textbbox((0,0), seal_text, font=font_small)
    ws = bbox_st[2] - bbox_st[0]
    draw.text((seal_x - ws/2, seal_y - 12), seal_text, font=font_small, fill=(255,255,255))
    
    # Save
    out_path = os.path.join("images", c['file'])
    img.save(out_path)
    print(f"Generated {out_path} with QR code")
