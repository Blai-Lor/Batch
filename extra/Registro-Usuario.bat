@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

SET intento=0
:login
CLS
SET /P usuario=Usuario: 
SET /P contras=Contrasena: 

IF "%usuario%"=="admin" IF "%contras%"=="1234" (
    ECHO Hola y bienvenido %usuario% !
    ECHO Fecha: %DATE%  Hora: %TIME%
    GOTO end
)

SET /A intento+=1
ECHO Nombre de Usuario o Contrasena incorrectos. Intento !intento! de 3.

IF !intento! GEQ 3 (
    ECHO Acceso bloqueado.
    GOTO end
)

PAUSE
GOTO login

:end
PAUSE