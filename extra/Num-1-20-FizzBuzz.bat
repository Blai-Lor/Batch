@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

FOR /L %%i IN (1,1,20) DO (
    SET num=
    SET /A mod3=%%i %% 3
    SET /A mod5=%%i %% 5

    IF !mod3! == 0 SET num=Fizz
    IF !mod5! == 0 SET num=!num!Buzz
    
    IF NOT DEFINED num (
        ECHO %%i
    ) ELSE (
        ECHO !num!
    )
)
PAUSE
