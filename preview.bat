@echo off
rem Runs the dashboard locally at http://localhost:8000/ (close this window to stop).
start "" http://localhost:8000/
python -m http.server 8000
