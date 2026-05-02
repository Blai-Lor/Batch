@echo off
setlocal enabledelayedexpansion

set intentoMaximo=3
set intent=0

:login
cls
echo Resgistro:
set /p nom=Nombre de Usuario:
set /p contr=Contrasena:

if "%nom%"=="admin" if "%contr%"=="1234" (
    echo.
    echo Registro Completado.
    echo Bienvenido, %nom%!
    echo Hoy es: %date%, %time%
    echo.
    pause
    exit
)

set /a intent+=1
echo.
echo Nombre de Usuario o Contrasena incorrectos.
echo Intentos: !intent! de %intentoMaximo%
echo.

if !intent! GEQ %intentoMaximo% (
    echo Acceso bloqueado. Demasiados intentos fallidos.
    pause
    exit
)

echo Try again.
pause
goto login
