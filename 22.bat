
chcp 65001
@echo off


set "directory=C:\Lab\PS-23-1\Proskurina"
for /f %%f in ('dir /a-d /b "%directory%\COM\HiddenFolder" 2^>nul ^| find /c /v ""') do set "hiddenFolderFiles=%%f"

for /f %%f in ('dir /a-d /b "%directory%\COM\NOT_HiddenFolder" 2^>nul ^| find /c /v ""') do set "notHiddenFolderFiles=%%f"

for /f %%f in ('dir /a-d /b "%directory%\Batch\HiddenFolder" 2^>nul ^| find /c /v ""') do set "batchHiddenFolderFiles=%%f"


for /f %%f in ('dir /a-d /b "%directory%\Batch\NOT_HiddenFolder" 2^>nul ^| find /c /v ""') do set "batchNotHiddenFolderFiles=%%f"

echo Кількість файлів у підкаталозі COM\HiddenFolder: %hiddenFolderFiles%
echo Кількість файлів у підкаталозі COM\NOT_HiddenFolder: %notHiddenFolderFiles%
echo Кількість файлів у підкаталозі Batch\HiddenFolder: %batchHiddenFolderFiles%
echo Кількість файлів у підкаталозі Batch\NOT_HiddenFolder: %batchNotHiddenFolderFiles%

pause
