@echo off
set /p fechaNacimiento=Introduce tu año de nacimiento:

set /a añoActual=2026
set /a edad=añoActual - fechaNacimiento
set /a hasta=100 - edad
set /a mes=edad * 12
set /a dias=edad * 365

echo SUMAR EDAD
echo .
echo Fecha Cumpleaños: %fechaNacimiento%
echo Año Actual: %añoActual%
echo .
echo Edad: %edad% años
echo Años hasta llegar a 100: %hasta%
echo Edad en meses: %mes%
echo Edad en dias: %dias%

pause