"""
Simple test to verify the program works
"""

import os
import sys

# Change to script directory
script_dir = os.path.dirname(os.path.abspath(__file__))
os.chdir(script_dir)

print("=" * 50)
print("  Simple Test")
print("=" * 50)
print()

print(f"Current directory: {os.getcwd()}")
print(f"Python executable: {sys.executable}")
print()

# Test imports
print("Testing imports...")
try:
    import tkinter as tk
    print("  tkinter: OK")
except ImportError as e:
    print(f"  tkinter: FAILED - {e}")
    sys.exit(1)

try:
    from pptx import Presentation
    print("  python-pptx: OK")
except ImportError as e:
    print(f"  python-pptx: FAILED - {e}")
    sys.exit(1)

try:
    from PIL import Image
    print("  Pillow: OK")
except ImportError as e:
    print(f"  Pillow: FAILED - {e}")
    sys.exit(1)

print()
print("All imports successful!")
print()

# Test creating a simple window
print("Testing tkinter window...")
try:
    root = tk.Tk()
    root.title("Test Window")
    root.geometry("300x200")

    label = tk.Label(root, text="tkinter is working!")
    label.pack(pady=50)

    button = tk.Button(root, text="Close", command=root.destroy)
    button.pack()

    print("  Window created successfully!")
    print("  Close the window to continue...")
    root.mainloop()
    print("  Window closed.")
except Exception as e:
    print(f"  tkinter test failed: {e}")
    sys.exit(1)

print()
print("=" * 50)
print("  Test complete!")
print("=" * 50)
input("\nPress Enter to exit...")
