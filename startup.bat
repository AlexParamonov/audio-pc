@echo off
set location=C:\audio-pc

timeout /t 80 /nobreak > NUL

echo Optimize
%location%\optimize.bat
