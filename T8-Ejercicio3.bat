@echo off
setlocal ENABLEDELAYEDEXPANSION
SET /A cout=0
FOR %%i IN (Mercury Venus Mars Jupiter Saturn Uranus Neptus) DO (
    set /a count=count+i
    echo !%count%!. %%i
)
pause