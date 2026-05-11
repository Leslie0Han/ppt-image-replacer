from setuptools import setup, find_packages

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

setup(
    name="ppt-image-replacer",
    version="1.0.0",
    author="Leslie",
    author_email="leslie@example.com",
    description="A visual tool for batch replacing images in PowerPoint files",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/lesliehanx/ppt-image-replacer",
    packages=find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
        "Topic :: Office/Business",
        "Topic :: Multimedia :: Graphics",
    ],
    python_requires=">=3.7",
    install_requires=[
        "python-pptx>=0.6.21",
        "Pillow>=9.0.0",
    ],
    entry_points={
        "console_scripts": [
            "ppt-replacer=ppt_image_replacer:main",
        ],
    },
)
