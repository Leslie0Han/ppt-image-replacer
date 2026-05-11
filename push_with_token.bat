@echo off
echo ========================================
echo   Push to GitHub with Personal Access Token
echo ========================================
echo.
echo Before running this script:
echo 1. Go to https://github.com/settings/tokens
echo 2. Click "Generate new token (classic)"
echo 3. Select "repo" scope
echo 4. Copy the token
echo.
echo ========================================
echo.

set /p token="Enter your GitHub Personal Access Token: "
set /p username="Enter your GitHub username: "
set /p repo="Enter repository name (e.g., ppt-image-replacer): "

echo.
echo Setting up remote...
echo.

git remote remove origin 2>nul
git remote add origin https://%username%:%token%@github.com/%username%/%repo%.git

echo Pushing to GitHub...
echo.

git branch -M main
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo   Success! Code pushed to GitHub!
    echo ========================================
    echo.
    echo Repository URL: https://github.com/%username%/%repo%
    echo.
) else (
    echo.
    echo ========================================
    echo   Error! Failed to push.
    echo ========================================
    echo.
)

pause
