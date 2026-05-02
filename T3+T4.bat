@echo off
set /p nombre=Introduce tu nombre:
set /p apellido=Introduce tu apellido:
set /p edad=Introduce tu edad:
set /p asignatura=Introduce tu asignatura favorita:

set usuario=%USERNAME%
set pc=%COMPUTERNAME%
set fecha=%DATE%

echo PERFIL
echo .
echo Nombre y apellido: %nombre% %apellido%
echo Edad: %edad%
echo Asignatura favorita: %asignatura%
echo .
echo Usuario del sistema: %usuario%
echo Nombre del equipo: %pc%
echo Fecha de hoy: %fecha%
echo .
echo Goodbye, %nombre%! See you next class.
echo .

pause
