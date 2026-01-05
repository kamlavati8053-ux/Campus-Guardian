@echo off
echo 🛡️ Campus Guardian - Simple Version
echo ===================================

echo.
echo 📦 Installing dependencies...
pip install flask flask-cors

echo.
echo 🚀 Starting Backend...
start "Backend" cmd /k "python app.py"

echo.
echo ⏳ Waiting for backend...
timeout /t 3 >nul

echo.
echo 🌐 Starting Frontend...
start "Frontend" cmd /k "python -m http.server 8000"

echo.
echo ⏳ Waiting for frontend...
timeout /t 3 >nul

echo.
echo 🎉 Opening Campus Guardian...
start http://localhost:8000

echo.
echo ✅ Campus Guardian is running!
echo.
echo 🌐 Frontend: http://localhost:8000
echo 📡 Backend:  http://localhost:5000
echo.
echo 🔑 Demo Accounts:
echo    Student: student@campus.edu / student123
echo    Admin:   admin@campus.edu / admin123
echo.

pause