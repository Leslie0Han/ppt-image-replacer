@echo off
echo ========================================
echo   Push to GitHub
echo ========================================
echo.

REM Set git user info
echo Setting git user info...
git config --global user.name "lesliehanx"
git config --global user.email "leslie@example.com"

echo.
echo Please follow these steps to push to GitHub:
echo.
echo 1. Go to https://github.com/new
echo 2. Create a new repository named: ppt-image-replacer
echo 3. Do NOT initialize with README, LICENSE, or .gitignore
echo 4. After creating the repository, run these commands:
echo.
echo    git remote add origin https://github.com/lesliehanx/ppt-image-replacer.git
echo    git branch -M main
echo    git push -u origin main
echo.
echo ========================================
echo.
pause
