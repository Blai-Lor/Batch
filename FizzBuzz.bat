@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
SIN COMILLAs
FOR /L %%i IN (1,1,20) DO (
    SET numero=
    SET /A el3=%%i %% 3
    SET /A el5=%%i %% 5

    IF !el3! == 0 SET numero=Fizz;
    IF !el5! == 0 SET numero=Buzz;

    IF

    )