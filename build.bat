@echo off
echo ========================================
echo   Building PPT Image Replacer
echo ========================================
echo.

echo Cleaning previous build...
if exist "build" rmdir /s /q "build"
if exist "dist" rmdir /s /q "dist"

echo.
echo Building exe...
echo.

pyinstaller --clean ppt_image_replacer.spec

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Build failed!
    pause
    exit /b 1
)

echo.
echo ========================================
echo   Build successful!
echo ========================================
echo.
echo Output file: dist\PPT图片替换工具.exe
echo.

pause
