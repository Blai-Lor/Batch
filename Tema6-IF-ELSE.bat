@ECHO OFF

SET /P num=Dime un numero?

IF %num% LSS 0 (
	ECHO El numero %num% es negativo
) ELSE IF %num% GTR 0 (
	ECHO El numero %num% es positivo
) ELSE ECHO El numero %num% es 0

PAUSE