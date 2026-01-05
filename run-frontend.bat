@echo off
echo Starting Frontend Server...

cd frontend
echo.
echo Choose an option:
echo 1. Python HTTP Server (port 8000)
echo 2. Node.js serve (if installed)
echo.

set /p choice="Enter choice (1 or 2): "

if "%choice%"=="1" (
    echo Starting Python server...
    python -m http.server 8000
) else if "%choice%"=="2" (
    echo Starting Node.js server...
    npx serve . -l 8000
) else (
    echo Invalid choice. Starting Python server...
    python -m http.server 8000
)

pause