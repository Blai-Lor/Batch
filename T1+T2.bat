@echo off
set /p nombreArchivo=Introduce el nombre del archivo:

if exist "%nombreArchivo%.txt" (
    echo Archivo encontrado
) else (
    echo. > "%nombreArchivo%.txt"
    echo Archivo creado
)

pause