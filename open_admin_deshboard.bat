
@echo off
cd /d "%~dp0"

echo Starting BloodLink Admin Dashboard...

if not exist node_modules (
    echo Installing dependencies...
    call npm install
)

start "" http://localhost:5174/

call npm run dev

pause
