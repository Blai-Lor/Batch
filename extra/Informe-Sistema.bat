@ECHO OFF
SET report=C:\CIDE\report.txt

ECHO Informe del Sistema > %report%
ECHO Fecha: %DATE% >> %report%
ECHO Hora: %TIME% >> %report%
ECHO Nombre de Usuario: %USERNAME% >> %report%
ECHO Nombre del Ordenador: %COMPUTERNAME% >> %report%
ECHO Carpeta de Windows: %WINDIR% >> %report%

ECHO Informe creado correctamente en %report%
START notepad %report%
PAUSE