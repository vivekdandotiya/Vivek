from PIL import Image, ImageDraw, ImageFont
import os
import random

# Certificate metadata
certs = [
    {
        "file": "cert1_real.png",
        "issuer": "IBM SkillsBuild",
        "title": "Web Development Fundamentals",
        "date": "Jun 20, 2026",
        "id": "6e8f2cdd-5e00-4086-b27e-3eaca97c4f29",
        "verify_url": "https://www.credly.com/badges/6e8f2cdd-5e00-4086-b27e-3eaca97c4f29",
        "style": "ibm"
    },
    {
        "file": "cert2_real.png",
        "issuer": "ScholarHat",
        "title": "Java Programming Course For Beginners",
        "date": "19th Jun 2026",
        "id": "KPGW190626",
        "verify_url": "www.scholarhat.com/certificate/verify",
        "style": "scholarhat"
    },
    {
        "file": "cert3_real.png",
        "issuer": "IIT Kharagpur (NPTEL)",
        "title": "Cloud Computing",
        "date": "Jul-Oct 2025",
        "id": "NPTEL25CS107S1358700346",
        "verify_url": "https://nptel.ac.in",
        "score_info": "Consolidated Score: 52% | Assignments: 17.5/25 | Exam: 34.5/75",
        "style": "nptel"
    },
    {
        "file": "cert4_real.png",
        "issuer": "Infosys Springboard",
        "title": "ChatGPT-4 Prompt Engineering: ChatGPT, Generative AI & LLM",
        "date": "August 13, 2025",
        "id": "verify.onwingspan.com",
        "verify_url": "https://verify.onwingspan.com",
        "style": "infosys"
    }
]

name = "Vivek Dandotiya"
width, height = 1200, 850
margin = 40

# Try loading standard Windows fonts, fallback to default if not available
try:
    font_title = ImageFont.truetype("arialbd.ttf", 48)
    font_subtitle = ImageFont.truetype("arial.ttf", 26)
    font_name = ImageFont.truetype("georgiab.ttf", 64)
    font_issuer = ImageFont.truetype("arialbd.ttf", 36)
    font_small = ImageFont.truetype("arial.ttf", 20)
    font_bold_small = ImageFont.truetype("arialbd.ttf", 20)
except IOError:
    print("Warning: Standard fonts not found, using default.")
    font_title = ImageFont.load_default()
    font_subtitle = ImageFont.load_default()
    font_name = ImageFont.load_default()
    font_issuer = ImageFont.load_default()
    font_small = ImageFont.load_default()
    font_bold_small = ImageFont.load_default()

os.makedirs("images", exist_ok=True)

def draw_qr(draw, x, y, size=80):
    # Draw simple simulated QR block
    draw.rectangle([x, y, x + size, y + size], fill=(255, 255, 255), outline=(0,0,0), width=1)
    cell = size // 10
    for r in range(10):
        for c in range(10):
            # Position markers in corners
            is_marker = (r < 3 and c < 3) or (r < 3 and c > 6) or (r > 6 and c < 3)
            if is_marker:
                draw.rectangle([x + c*cell, y + r*cell, x + (c+1)*cell, y + (r+1)*cell], fill=(0,0,0))
            elif random.random() > 0.5:
                draw.rectangle([x + c*cell, y + r*cell, x + (c+1)*cell, y + (r+1)*cell], fill=(0,0,0))

for c in certs:
    # 1. Base Setup
    bg_color = (255, 255, 255)
    if c['style'] == 'nptel':
        bg_color = (255, 254, 245) # Cream base for NPTEL
    
    img = Image.new('RGB', (width, height), color=bg_color)
    draw = ImageDraw.Draw(img)
    
    # 2. Draw Borders and Themes
    if c['style'] == 'ibm':
        # IBM Blue framing and layout
        draw.rectangle([0, 0, width, height], outline=(15, 98, 254), width=24) # IBM Blue main border
        # Top-right SkillsBuild block color
        draw.rectangle([width - 250, 24, width - 24, 180], fill=(255, 126, 182)) # Pink card block
        draw.rectangle([width - 250, 180, width - 24, 240], fill=(15, 98, 254)) # Blue logo strip
        draw.text((width - 230, 200), "IBM SkillsBuild", font=font_bold_small, fill=(255, 255, 255))
        
        # Left sidebar border detail
        draw.rectangle([24, 24, 34, height-24], fill=(15, 98, 254))
        
    elif c['style'] == 'scholarhat':
        # ScholarHat Cyan & Blue border
        draw.rectangle([0, 0, width, height], outline=(0, 124, 195), width=16)
        draw.rectangle([16, 16, width-16, height-16], outline=(0, 180, 241), width=4)
        
        # Golden Ribbon Badge on top left
        draw.ellipse([80, 80, 200, 200], fill=(255, 215, 0), outline=(204, 153, 0), width=3)
        draw.polygon([(110, 180), (100, 260), (140, 230), (180, 260), (170, 180)], fill=(255, 193, 7))
        
    elif c['style'] == 'nptel':
        # IIT Cream and Deep Red theme
        draw.rectangle([0, 0, width, height], outline=(115, 15, 15), width=20) # Deep red border
        # Bottom brown-gold bar
        draw.rectangle([20, height - 120, width - 20, height - 20], fill=(240, 219, 188))
        
        # Top Header Banner
        draw.rectangle([20, 20, width - 20, 100], fill=(255, 255, 255))
        draw.line([(20, 100), (width - 20, 100)], fill=(115, 15, 15), width=2)
        
        # Roll Number Box at bottom left
        draw.text((40, height - 90), f"Roll No: {c['id']}", font=font_bold_small, fill=(115, 15, 15))
        draw.text((40, height - 60), "To verify certificate scan QR", font=font_small, fill=(0,0,0))
        
    elif c['style'] == 'infosys':
        # Clean Infosys Blue accents
        draw.rectangle([0, 0, width, height], outline=(0, 124, 195), width=6)
        draw.line([(0, 150), (width, 150)], fill=(0, 124, 195), width=4)
        # Decorative lines on sides
        for i in range(12):
            draw.line([30 + i*15, 190, 30 + i*15, 215], fill=(135, 206, 250), width=2)
            draw.line([width - 200 + i*15, 190, width - 200 + i*15, 215], fill=(135, 206, 250), width=2)

    # 3. Main Text Layout
    if c['style'] == 'ibm':
        # IBM Layout
        draw.text((70, 80), "In recognition of the commitment to achieve\nprofessional excellence", font=font_subtitle, fill=(40, 40, 40))
        
        draw.text((70, 280), name, font=font_name, fill=(0, 0, 0))
        draw.text((70, 400), "Has successfully satisfied the requirements for:", font=font_subtitle, fill=(70, 70, 70))
        
        draw.line([(70, 470), (width - 100, 470)], fill=(15, 98, 254), width=2)
        draw.text((70, 520), c['title'], font=font_title, fill=(15, 98, 254))
        
        draw.text((200, 680), f"Issued on: {c['date']}", font=font_small, fill=(40, 40, 40))
        draw.text((200, 710), "Issued by: IBM SkillsBuild", font=font_small, fill=(40, 40, 40))
        draw.text((200, 750), f"Verify: {c['verify_url']}", font=font_small, fill=(15, 98, 254))
        
        draw_qr(draw, 70, 670, size=90)
        # IBM Text Logo bottom right
        draw.text((width - 180, 700), "IBM", font=font_issuer, fill=(15, 98, 254))
        
    elif c['style'] == 'scholarhat':
        # ScholarHat Layout
        draw.text((width//2, 130), "CERTIFICATE", font=font_issuer, fill=(0, 124, 195), anchor="mm")
        draw.text((width//2, 175), "OF COMPLETION", font=font_title, fill=(50, 50, 50), anchor="mm")
        draw.text((width//2, 240), "PROUDLY AWARDED TO", font=font_subtitle, fill=(100, 100, 100), anchor="mm")
        
        draw.text((width//2, 340), name, font=font_name, fill=(50, 50, 50), anchor="mm")
        draw.line([(width//2 - 250, 390), (width//2 + 250, 390)], fill=(0, 0, 0), width=2)
        
        draw.text((width//2, 430), "for successfully completing the course", font=font_subtitle, fill=(100, 100, 100), anchor="mm")
        draw.text((width//2, 490), c['title'], font=font_title, fill=(0, 124, 195), anchor="mm")
        
        # Footer section (Date and Certificate ID on left, Signature on right)
        draw.text((100, 650), f"Date: {c['date']}", font=font_bold_small, fill=(50, 50, 50))
        draw.text((100, 680), f"Certificate Id: {c['id']}", font=font_small, fill=(80, 80, 80))
        
        # ScholarHat central bottom logo representation
        draw.rectangle([width//2 - 30, 650, width//2 + 30, 700], fill=(0, 180, 241))
        
        draw.line([(width - 350, 680), (width - 100, 680)], fill=(100, 100, 100), width=1)
        draw.text((width - 225, 700), "Shailendra Chauhan", font=font_bold_small, fill=(0, 0, 0), anchor="mm")
        draw.text((width - 225, 725), "(Founder & CEO, ScholarHat)", font=font_small, fill=(100, 100, 100), anchor="mm")
        
    elif c['style'] == 'nptel':
        # NPTEL Layout
        draw.text((width//2, 60), "NPTEL ONLINE CERTIFICATION", font=font_issuer, fill=(115, 15, 15), anchor="mm")
        draw.text((width//2, 90), "(Funded by the MoE, Govt. of India)", font=font_small, fill=(50, 50, 50), anchor="mm")
        
        # Swayam / IIT logos at top left/right
        draw.text((60, 45), "IITK", font=font_bold_small, fill=(115, 15, 15))
        draw.text((width - 160, 45), "SWAYAM", font=font_bold_small, fill=(0, 102, 204))
        
        draw.text((width//2, 170), "This certificate is awarded to", font=font_subtitle, fill=(80, 80, 80), anchor="mm")
        draw.text((width//2, 240), name.upper(), font=font_name, fill=(0, 0, 0), anchor="mm")
        draw.text((width//2, 310), "for successfully completing the course", font=font_subtitle, fill=(80, 80, 80), anchor="mm")
        draw.text((width//2, 370), c['title'], font=font_title, fill=(0, 0, 0), anchor="mm")
        
        # NPTEL consolidated score details box
        draw.rectangle([width//2 - 280, 430, width//2 + 280, 530], outline=(0, 0, 0), width=2)
        draw.text((width//2, 455), c['score_info'].split('|')[0].strip(), font=font_bold_small, fill=(0, 0, 0), anchor="mm")
        draw.text((width//2, 495), c['score_info'].split('|')[1].strip() + "   |   " + c['score_info'].split('|')[2].strip(), font=font_small, fill=(50, 50, 50), anchor="mm")
        
        # Details below box
        draw.text((width//2, 570), "Total number of candidates certified in this course: 27874", font=font_subtitle, fill=(0, 0, 0), anchor="mm")
        draw.text((width//2, 630), f"Duration: {c['date']} (12 week course)", font=font_bold_small, fill=(0, 0, 0), anchor="mm")
        
        # Signature on bottom right
        draw.line([(width - 320, 710), (width - 80, 710)], fill=(0,0,0), width=1)
        draw.text((width - 200, 730), "Prof. Haimanti Banerji", font=font_bold_small, fill=(0, 0, 0), anchor="mm")
        draw.text((width - 200, 755), "IIT Kharagpur", font=font_small, fill=(100, 100, 100), anchor="mm")
        
        # Bottom brand labels
        draw.text((250, height - 70), "Indian Institute of Technology Kharagpur", font=font_bold_small, fill=(115, 15, 15))
        draw_qr(draw, width - 120, height - 110, size=80)
        
    elif c['style'] == 'infosys':
        # Infosys Springboard Layout
        draw.text((width//2, 80), "Infosys", font=font_issuer, fill=(0, 124, 195), anchor="mm")
        draw.text((width//2, 115), "Navigate your next", font=font_small, fill=(80, 80, 80), anchor="mm")
        
        draw.text((width//2, 240), "COURSE COMPLETION CERTIFICATE", font=font_title, fill=(0, 124, 195), anchor="mm")
        
        draw.text((width//2, 330), "The certificate is awarded to", font=font_subtitle, fill=(100, 100, 100), anchor="mm")
        draw.text((width//2, 400), name, font=font_name, fill=(0, 124, 195), anchor="mm")
        
        draw.text((width//2, 470), "for successfully completing the course", font=font_subtitle, fill=(80, 80, 80), anchor="mm")
        
        # Multi-line Course Title logic for Prompt Engineering
        title_parts = [
            "ChatGPT-4 Prompt Engineering:",
            "ChatGPT, Generative AI & LLM"
        ]
        draw.text((width//2, 530), title_parts[0], font=font_bold_small, fill=(0, 124, 195), anchor="mm")
        draw.text((width//2, 565), title_parts[1], font=font_bold_small, fill=(0, 124, 195), anchor="mm")
        
        draw.text((width//2, 630), f"on {c['date']}", font=font_subtitle, fill=(80, 80, 80), anchor="mm")
        
        # Infosys Springboard brand bottom center
        draw.text((width//2, 700), "Infosys | Springboard", font=font_bold_small, fill=(255, 69, 0), anchor="mm")
        draw.text((width//2, 735), "Congratulations! You make us proud!", font=font_subtitle, fill=(255, 69, 0), anchor="mm")
        
        # QR Code on left
        draw_qr(draw, 80, 650, size=100)
        draw.text((80, 765), "To verify scan QR code", font=font_small, fill=(80, 80, 80))
        draw.text((80, 790), f"Verify: {c['verify_url']}", font=font_small, fill=(0, 124, 195))
        
        # Signature on right
        draw.line([(width - 320, 740), (width - 80, 740)], fill=(0,0,0), width=1)
        draw.text((width - 200, 760), "Thirumala Arohi", font=font_bold_small, fill=(0, 0, 0), anchor="mm")
        draw.text((width - 200, 785), "Global Head, ETA, Infosys Ltd", font=font_small, fill=(100, 100, 100), anchor="mm")

    # 4. Save Image
    out_path = os.path.join("images", c['file'])
    img.save(out_path)
    print(f"Successfully generated certificate image: {out_path}")

print("All original certificates generated successfully.")
