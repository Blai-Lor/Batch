@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

SET file=tickets.txt
IF NOT EXIST %file% TYPE NUL > %file%

:menu
CLS
ECHO SISTEMA PARA LOS TICKETS
ECHO 1. Nuevo ticket
ECHO 2. Mostrar en lista los tickets
ECHO 3. Estadisticas de los tickets
ECHO 4. Borrar todos los tickets
ECHO 5. Salir
ECHO.
SET /P op=Elige una opcion: 

IF "%op%"=="1" GOTO nuevo
IF "%op%"=="2" GOTO lista
IF "%op%"=="3" GOTO stadistica
IF "%op%"=="4" GOTO limpia
IF "%op%"=="5" GOTO exit

ECHO Opcion no valida
PAUSE
GOTO menu

:nuevo
CLS
SET /P user=Usuario: 
SET /P issue=Descripcion del problema: 
FOR /F "tokens=1" %%x IN ('find /c /v "" ^< %file%') DO SET num=%%x
SET /A num+=1
ECHO Ticket !num! - %user% - %issue% >> %file%
ECHO Ticket creado correctamente.
PAUSE
GOTO menu

:lista
CLS
TYPE %file%
PAUSE
GOTO menu

:stadistica
CLS
FOR /F "tokens=1" %%x IN ('find /c /v "" ^< %file%') DO SET count=%%x
ECHO Numero total de tickets: %count%
PAUSE
GOTO menu

:limpia
CLS
SET /P conf=Seguro que quieres borrar todos los tickets? (S/N): 
IF /I "%conf%"=="S" (
    TYPE NUL > %file%
    ECHO Todos los tickets han sido eliminados.
) ELSE (
    ECHO Operacion cancelada.
)
PAUSE
GOTO menu

:exit
CLS
ECHO Saliendo.
PAUSE
