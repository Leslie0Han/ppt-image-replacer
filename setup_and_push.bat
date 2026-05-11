@echo off
echo ========================================
echo   Setup Git and Push to GitHub
echo ========================================
echo.

REM Step 1: Configure Git
echo Step 1: Configuring Git...
echo.

set /p username="Enter your GitHub username: "
set /p email="Enter your GitHub email: "

git config --global user.name "%username%"
git config --global user.email "%email%"

echo.
echo Git configured successfully!
echo.

REM Step 2: Add remote
echo Step 2: Adding remote repository...
echo.

set /p repo_url="Enter your GitHub repository URL (e.g., https://github.com/username/repo.git): "

git remote add origin %repo_url% 2>nul
if %errorlevel% equ 0 (
    echo Remote added successfully!
) else (
    echo Remote already exists or error occurred.
    git remote set-url origin %repo_url%
    echo Remote URL updated.
)

echo.

REM Step 3: Push
echo Step 3: Pushing to GitHub...
echo.

git branch -M main
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo   Success! Code pushed to GitHub!
    echo ========================================
    echo.
    echo Your repository: %repo_url%
    echo.
) else (
    echo.
    echo ========================================
    echo   Error! Failed to push.
    echo ========================================
    echo.
    echo Please check:
    echo 1. Your GitHub credentials
    echo 2. Repository URL is correct
    echo 3. You have write access to the repository
    echo.
)

pause
