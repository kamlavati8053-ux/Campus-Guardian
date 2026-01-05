@echo off
echo Campus Guardian Setup

echo.
echo IMPORTANT: Make sure you have JDK (not JRE) installed!
echo Download from: https://adoptium.net/
echo.

echo Installing Node.js dependencies (optional)...
npm install

echo.
echo Setup complete!
echo.
echo To run the application:
echo 1. Backend: run-backend.bat
echo 2. Frontend: run-frontend.bat
echo.
echo Or manually:
echo   Backend: cd backend && mvnw.cmd spring-boot:run
echo   Frontend: cd frontend && python -m http.server 8000
echo.
pause