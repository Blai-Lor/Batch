@echo off

echo 1 - Poor
echo 2 - Average
echo 3 - Good
set /p opcion=Elige una opcion:

IF "%opcion%"=="1" ( GOTO poor
) ELSE IF "%opcion%"=="2" ( GOTO avg
) ELSE IF "%opcion%"=="3" ( GOTO good
) ELSE ( GOTO error )

:poor
echo El profesor es malo
goto end

:avg
echo El profesor es normalillo
goto end

:good
echo El profesor es bueno
goto end

:end
pause