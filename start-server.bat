@echo off
cd /d "%~dp0"
echo Starting Dating Site Server...
echo Server will run continuously and auto-restart if it crashes
echo.
echo NOTE: If port 5000 is busy, server will use port 5001
echo.

:loop
echo [%date% %time%] Starting server...
start "Dating Site Server" /WAIT C:\PROGRA~1\nodejs\node.exe server/index.js
echo.
echo [%date% %time%] Server stopped. Restarting in 3 seconds...
timeout /t 3 /nobreak >nul
echo.
goto loop
