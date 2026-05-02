@echo off
setlocal enabledelayedexpansion
:menu
cls

echo OPCIONES DE TICKETS
echo 1. Nuevo ticket
echo 2. lista tickets
echo 3. Estadisticas
echo 4. Borrar todos los tickets
echo 5. Salir

set /p opt="Selecciona una opcion: "

if %opt%==1 goto nuevo
if %opt%==2 goto lista
if %opt%==3 goto estadis
if %opt%==4 goto borrar
if %opt%==5 exit
goto menu

:nuevo
cls
echo NUEVO TICKET
set /p user="Nombre de usuario: "
set /p issue="Descripcion del problema: "

set count=1
if exist tickets.txt (
    for /f %%a in ('type tickets.txt ^| find /c /v ""') do set count=%%a
    set /a count+=1
)

echo ID: %count% ^| Usuario: %user% ^| Problema: %issue% >> tickets.txt
echo.
echo Ticket #%count% creado con exito.
pause
goto menu

:lista
cls
echo --- LISTADO DE TICKETS ---
if not exist tickets.txt (
    echo No hay tickets registrados.
) else (
    type tickets.txt
)
pause
goto menu

:estadis
cls
echo --- ESTADISTICAS ---
if not exist tickets.txt (
    echo Total de tickets: 0
) else (
    for /f %%a in ('type tickets.txt ^| find /c /v ""') do set total=%%a
    echo Total de tickets registrados: !total!
)
pause
goto menu

:borrar
cls
set /p conf="¿Seguro que quieres borrar todo? (S/N): "
if /i "%conf%"=="S" (
    del tickets.txt >nul 2>&1
    echo Archivo limpiado.
) else (
    echo Operacion cancelada.
)
pause
goto menu
