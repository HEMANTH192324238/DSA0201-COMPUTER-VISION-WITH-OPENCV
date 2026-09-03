@echo off
cd /d "%~dp0"
python -m pip install -r backend\requirements.txt
if errorlevel 1 (pause&exit /b 1)
start "Traffic AI Backend" cmd /k "cd /d %~dp0 && python backend\app.py"
timeout /t 3 /nobreak >nul
start "" "%~dp0frontend\index.html"
pause
