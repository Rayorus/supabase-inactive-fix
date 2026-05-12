@echo off
echo Setting up weekly Task Scheduler job for Supabase Inactive Fix...
cd /d "%~dp0"

schtasks /create /tn "Supabase-Inactive-Fix" /tr "%~dp0..\macos-overlay\app\venv\Scripts\python.exe %~dp0main.py" /sc weekly /d SUN /st 12:00
echo Task created! It will run every Sunday at 12:00 PM.
pause
