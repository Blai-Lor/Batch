@ECHO OFF
SET /P cantidad=Introduce el importe de la cuenta: 

SET /A propina10=cantidad*10/100
SET /A propina15=cantidad*15/100
SET /A propina20=cantidad*20/100

SET /A total10=cantidad+propina10
SET /A total15=cantidad+propina15
SET /A total20=cantidad+propina20

ECHO La propina es del 10%%: %propina10%  y el total es: %total10%
ECHO La propina es del 15%%: %propina15%  y el total es: %total15%
ECHO La propina es del 20%%: %propina20%  y el total es: %total20%

PAUSE