@echo off
if not exist "C:\CIDE\scripts" (
    mkdir "C:\CIDE\scripts"
)

set /p nombre=Nombre:
set /p horas=Horas Trabajadas:
set /p rate=Hourly rate:

:: Calcular salario bruto
set /a salari=horas * rate

:: Calcular impuestos (15%) y salario limpioo
:: Nota: Batch usa enteros, así que 15%% se calcula como (salari * 15) / 100
set /a imp=(salari * 15) / 100
set /a limpio=salari - imp

:: Clasificación según salario bruto
if %salari% LSS 500 (
    set nivel=LOW
) else if %salari% LSS 1500 (
    set nivel=MEDIUM
) else (
    set nivel=HIGH
)

echo =============================== > "C:\CIDE\scripts\ex4_report.txt"
echo        SALARY REPORT            >> "C:\CIDE\scripts\ex4_report.txt"
echo =============================== >> "C:\CIDE\scripts\ex4_report.txt"
echo Employee: %nombre%              >> "C:\CIDE\scripts\ex4_report.txt"
echo Hours worked: %horas%           >> "C:\CIDE\scripts\ex4_report.txt"
echo Hourly rate: %rate%             >> "C:\CIDE\scripts\ex4_report.txt"
echo Gross: %salari%                 >> "C:\CIDE\scripts\ex4_report.txt"
echo Tax (15%%): %imp%               >> "C:\CIDE\scripts\ex4_report.txt"
echo Net: %limpio%                   >> "C:\CIDE\scripts\ex4_report.txt"
echo Category: %nivel%               >> "C:\CIDE\scripts\ex4_report.txt"
echo =============================== >> "C:\CIDE\scripts\ex4_report.txt"
start notepad "C:\CIDE\scripts\ex4_report.txt"
