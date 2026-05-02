@echo off
setlocal ENABLEDELAYEDEXPANSION

set aprobados=0
set suspendidos=0
set skip=1

for /f "tokens=1,2 delims=," %%A in (grades.txt) do (
    if !skip! == 1 (
        set skip=0
    ) else (
        set nombre=%%A
        set nota=%%B
        if !nota! GEQ 5 (
            echo !nombre! aprobo
            set /a aprobados+=1
        ) else (
            echo !nombre! suspendio
            set /a suspendidos+=1
        )
    )
)

echo Aprobados: !aprobados!
echo Suspendidos: !suspendidos!

endlocal
pause