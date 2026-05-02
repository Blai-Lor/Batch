@echo off

set /p numero=Tabla de multiplicar:
set /A i=1

:inicio
if %i% GTR 10 GOTO end
    set /A resultado=numero*i
    echo %numero% x %i% = %resultado%
    set /A i=i+1

goto inicio

:end

pause