mkdir C:\Lab
mkdir C:\Lab\PS-23-1
mkdir C:\Lab\PS-23-1\Proskurina
mkdir C:\Lab\PS-23-1\Proskurina\COM
mkdir C:\Lab\PS-23-1\Proskurina\COM\HiddenFolder
mkdir C:\Lab\PS-23-1\Proskurina\COM\NOT_HiddenFolder
mkdir C:\Lab\PS-23-1\Proskurina\Batch
mkdir C:\Lab\PS-23-1\Proskurina\Batch\HiddenFolder
mkdir C:\Lab\PS-23-1\Proskurina\Batch\NOT_HiddenFolder
attrib +h C:\Lab\PS-23-1\Proskurina\COM\HiddenFolder
attrib +h C:\Lab\PS-23-1\Proskurina\Batch\HiddenFolder
xcopy /?
xcopy /? > "C:\Lab\PS-23-1\Proskurina\COM\NOT_HiddenFolder\copyhelp.txt"
xcopy /? > "C:\Lab\PS-23-1\Proskurina\Batch\NOT_HiddenFolder\copyhelp.txt"

xcopy "C:\Lab\PS-23-1\Proskurina\COM\NOT_HiddenFolder\copyhelp.txt" "C:\Lab\PS-23-1\Proskurina\COM\HiddenFolder\copied_copyhelp.txt"

\PS-23-1\Proskurina\COM\HiddenFolder\copied_copyhelp.txt"
echo xcopy "C:\Lab\PS-23-1\Proskurina\COM\copyhelp.txt" "C:\Lab\PS-23-1\Proskurina\COM\HiddenFolder\copied_copyhelp.txt" >> "C:\Lab\PS-23-1\Proskurina\Batch\copyhelp.txt"
echo start "C:\Lab\PS-23-1\Proskurina\Batch\copyhelp.txt" >> "C:\Lab\PS-23-1\Proskurina\Batch\open_report.bat"
