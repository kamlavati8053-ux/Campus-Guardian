@echo off
echo Starting Campus Guardian Frontend...

cd frontend
echo.
echo Opening http://localhost:8000 in browser...
start http://localhost:8000

echo.
echo Starting Python server...
python -m http.server 8000