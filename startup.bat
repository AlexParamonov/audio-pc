@echo off
set location=C:\audio-pc

timeout /t 83 /nobreak > NUL

echo Optimize
%location%\optimize.bat
