@echo off

SET /P num1=Primer numero?
ECHO.
SET /P num2=Segundo numero?
ECHO.

SET /A suma=num1+num2
SET /A resta=num1-num2
SET /A multi=num1*num2
SET /A division=num1/num2
SET /A modulo=num1%%num2

ECHO Suma: %suma%, Resta: %resta%, Multiplicacion: %multi%, Division: %division%, Modulo: %modulo%

PAUSE