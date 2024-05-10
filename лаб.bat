chcp 65001
@echo off
setlocal enabledelayedexpansion

if "%~1" == "" (
    echo Usage: %0 ^<directory^>
    exit /b 1
)

if not exist "%~1" (
    echo Error: %1 is not a valid directory.
    exit /b 1
)

set "directory=%~1"


set "hiddenCount=0"
set "readOnlyCount=0"
set "archiveCount=0"
set "totalCount=0"

for /r "%directory%" %%F in (*) do (
    set "file=%%~fF"
    set "attr=%%~aF"

    
    if "!attr:~3,1!" equ "H" (set /a "hiddenCount+=1")
    if "!attr:~2,1!" equ "R" (set /a "readOnlyCount+=1")
    if "!attr:~5,1!" equ "A" (set /a "archiveCount+=1")
    set /a "totalCount+=1"
)


echo Кількість файлів у підкаталозі з прихованим атрибутом: %hiddenCount%
echo Кількість файлів у підкаталозі з атрибутом "тільки читання": %readOnlyCount%
echo Кількість файлів у підкаталозі з архівним атрибутом: %archiveCount%
echo Загальна кількість файлів у підкаталозі: %totalCount%

exit /b 0
