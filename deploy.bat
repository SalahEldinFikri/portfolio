@echo off
echo ========================================
echo    Portfolio Vercel Deployment Helper
echo ========================================
echo.
echo This script will help you deploy your portfolio to Vercel
echo.
echo Choose your deployment method:
echo.
echo 1. Open Vercel website for web deployment
echo 2. Check if Node.js is installed
echo 3. Open portfolio folder in File Explorer
echo 4. Exit
echo.
set /p choice="Enter your choice (1-4): "

if "%choice%"=="1" (
    echo Opening Vercel website...
    start https://vercel.com
    echo.
    echo Instructions:
    echo 1. Sign up/login to Vercel
    echo 2. Click "New Project"
    echo 3. Drag and drop your portfolio folder
    echo 4. Click "Deploy"
    echo.
    pause
) else if "%choice%"=="2" (
    echo Checking for Node.js...
    node --version >nul 2>&1
    if %errorlevel%==0 (
        echo Node.js is installed!
        node --version
        echo.
        echo You can now use Vercel CLI:
        echo npm install -g vercel
        echo vercel login
        echo vercel
    ) else (
        echo Node.js is not installed.
        echo Please install Node.js from https://nodejs.org
        echo.
        echo Opening Node.js download page...
        start https://nodejs.org
    )
    echo.
    pause
) else if "%choice%"=="3" (
    echo Opening portfolio folder...
    explorer .
    echo.
    echo You can now:
    echo 1. Zip the folder contents
    echo 2. Upload to Vercel web interface
    echo 3. Or drag and drop the folder directly
    echo.
    pause
) else if "%choice%"=="4" (
    echo Goodbye!
    exit
) else (
    echo Invalid choice. Please try again.
    pause
    goto :eof
)

echo.
echo ========================================
echo    Deployment Guide Complete
echo ========================================
echo.
echo Your portfolio files are ready in this folder:
echo %cd%
echo.
echo Files included:
echo - index.html (main website)
echo - styles.css (styling)
echo - script.js (interactions)
echo - vercel.json (deployment config)
echo - package.json (project info)
echo - DEPLOYMENT.md (detailed guide)
echo.
echo For detailed instructions, open DEPLOYMENT.md
echo.
pause
