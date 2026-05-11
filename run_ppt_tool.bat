@echo off
echo ========================================
echo   PPT Image Replacer Tool
echo ========================================
echo.

REM Use full path to Python
set PYTHON_PATH=C:\Users\hanxuan\AppData\Local\Programs\Python\Python311\python.exe

echo Starting program...
echo.

"%PYTHON_PATH%" "%~dp0ppt_image_replacer.py"

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Program exited with error code: %errorlevel%
    echo.
)

pause
