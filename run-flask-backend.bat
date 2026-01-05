@echo off
echo Starting Campus Guardian Flask Backend...

echo.
echo Installing Python dependencies...
pip install -r requirements.txt

echo.
echo Starting Flask server...
cd flask-backend
python app.py

pause