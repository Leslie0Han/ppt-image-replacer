"""
创建新的测试图片用于测试替换功能
"""

from PIL import Image, ImageDraw, ImageFont
import os


def create_new_images():
    """创建新的测试图片"""
    new_dir = "new_images"
    os.makedirs(new_dir, exist_ok=True)

    # 创建不同颜色的新图片
    images = [
        ("户型图A.png", "orange", "新户型图A"),
        ("总图.jpg", "purple", "新总图"),
        ("效果图01.png", "cyan", "新效果图"),
    ]

    for filename, color, text in images:
        # 创建图片
        img = Image.new('RGB', (300, 300), color)
        draw = ImageDraw.Draw(img)

        # 添加文字
        try:
            font = ImageFont.truetype("msyh.ttc", 20)
        except:
            font = ImageFont.load_default()

        # 在图片中心绘制文字
        bbox = draw.textbbox((0, 0), text, font=font)
        text_width = bbox[2] - bbox[0]
        text_height = bbox[3] - bbox[1]
        x = (300 - text_width) // 2
        y = (300 - text_height) // 2
        draw.text((x, y), text, fill="white", font=font)

        # 保存图片
        filepath = os.path.join(new_dir, filename)
        img.save(filepath)
        print(f"创建: {filepath}")

    print(f"\n新图片已创建在: {new_dir}/")


if __name__ == "__main__":
    create_new_images()
