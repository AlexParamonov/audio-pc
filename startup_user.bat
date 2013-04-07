@echo off
set location=C:\audio-pc

echo Start Fidelizer

start "fidelizer" "%location%\fidelizer.exe" /s
timeout /t 58 /nobreak > NUL

echo kill iexplore
%location%\pskill.exe iexplore

echo Start Player
start "Player" "%location%\player.lnk"
