@echo off

FOR /f "tokens=2 skip=5" %%G IN ('C:\PSTools\pslist.exe') DO C:\PSTools\process.exe -p %%G low
FOR /f "tokens=2 skip=5" %%G IN ('C:\PSTools\pslist.exe') DO C:\PSTools\process.exe -a %%G 1

FOR /f "tokens=4 skip=3" %%G IN ('C:\PSTools\pslist.exe Media') DO C:\PSTools\process.exe -a %%G 100
FOR /f "tokens=2 skip=3" %%G IN ('C:\PSTools\pslist.exe CTAud') DO C:\PSTools\process.exe -a %%G 1000

FOR /f "tokens=4 skip=3" %%G IN ('C:\PSTools\pslist.exe Media') DO C:\PSTools\process.exe -p %%G realtime
FOR /f "tokens=2 skip=3" %%G IN ('C:\PSTools\pslist.exe CTAud') DO C:\PSTools\process.exe -p %%G realtime


:: FOR /f "tokens=2 skip=3" %%G IN ('C:\PSTools\pslist.exe SR') DO C:\PSTools\process.exe -a %%G 10
FOR /f "tokens=2 skip=3" %%G IN ('C:\PSTools\pslist.exe JRService') DO C:\PSTools\process.exe -a %%G 10
FOR /f "tokens=2 skip=3" %%G IN ('C:\PSTools\pslist.exe JRService') DO C:\PSTools\process.exe -p %%G high
