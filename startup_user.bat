@echo off

echo Start Fidelizer

start "fidelizer" "C:\Program Files (x86)\fidelizer.exe" /s
timeout /t 58 /nobreak > NUL

echo kill iexplore
C:\PSTools\pskill.exe iexplore

echo Start Media Server
:: start "MediaServer" "C:\Windows\System32\MC18.exe" /MediaServer
start "Media Center" "C:\Program Files (x86)\J River\Media Center 18\Media Center 18.exe"
