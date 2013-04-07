@echo off
set audiocard=CTAud
:: if you are using foobar, dont forget to change tokens from 4 to 3 or 2
set player=Media
set player_service=JRService

set location=C:\audio-pc
set pslist=%location%\pslist.exe
set process=%location%\process.exe

:: Core #1
FOR /f "tokens=2 skip=5" %%G IN ('%pslist%') DO (%process% -a %%G 1 & %process% -p %%G low)

:: Core #2
:: "Media Center Service" that runs only when the player is running to allow talking to hardware (for remotes, handhelds, etc.) when UAC is enabled.
FOR /f "tokens=2 skip=3" %%G IN ('%pslist% %player_service%') DO (%process% -a %%G 10 & %process% -p %%G high)

:: Core #3
:: Put player to realtime
FOR /f "tokens=4 skip=3" %%G IN ('%pslist% %player%') DO (%process% -a %%G 100 & %process% -p %%G realtime)

:: Core #4
:: Put audiocard driver to realtime
FOR /f "tokens=2 skip=3" %%G IN ('%pslist% %audiocard%') DO (%process% -a %%G 1000 & %process% -p %%G realtime)
