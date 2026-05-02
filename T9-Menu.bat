@ECHO OFF
:menu
CLS

ECHO 1. Show the system date and time.
ECHO 2. Show the username and computer name.
ECHO 3. List .BAT files in C:\CIDE.
ECHO 4. Exit the program.

ECHO.
set /P opcion=Introduce una opicion(1-4):
if "%opcion%"=="1" GOTO opcion1
if "%opcion%"=="2" GOTO opcion2
if "%opcion%"=="3" GOTO opcion3
if "%opcion%"=="4" GOTO opcion4

:opcion1
    echo Date: %DATE%
    echo Time: %TIME%
    pause
    goto menu
:opcion2
    echo Username: %USERNAME%
    echo Computername: %Computername%
    pause
    goto menu
:opcion3
    FOR /R C:\CIDE\scripts %%i IN (*.bat) do (
        echo = %%i
    )
    pause
    goto menu
:opcion4
    pause
    goto end
:end
PAUSE