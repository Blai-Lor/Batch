@echo off

REM Define la ruta del informe
SET archivo=C:\CIDE\archivo.txt

REM Crear encabezado con fecha y hora que sobrescribe el archivo
ECHO =============================== > "%archivo%"
ECHO Reporte del sistema >> "%archivo%"
ECHO Fecha y hora: %date% %time% >> "%archivo%"
ECHO =============================== >> "%archivo%"

REM Añade información del sistema
ECHO Usuario: %username% >> "%archivo%"
ECHO Equipo: %computername% >> "%archivo%"
ECHO Carpeta de Windows: %windir% >> "%archivo%"

REM Mensaje de confirmación en pantalla
ECHO El informe del sistema se ha generado correctamente.

REM Abre el archivo con Notepad
notepad "%archivo%"

endlocal