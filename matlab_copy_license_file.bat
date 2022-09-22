echo on
set datetimef=%date:~-4%_%date:~3,2%_%date:~0,2%__%time:~0,2%_%time:~3,2%_%time:~6,2%
echo %datetimef%
call :log > %datetimef%_matlab_logger.txt 
matlab_dir = "D:\Program Files\Matlab\bin\win64\matlab_startup_plugins\lmgrimpl"
if exist %matlab_dir%
{
	echo Folder Exists
}
else 
{
	echo Folder Does Not Exist 
}
matlab_exe = "D:\Program Files\Matlab\bin\matlab.exe"
if exist %filename%
(
    call :log >> %filename%
else 
(
    exit \b 1
)
:log
echo %date% %time% 
echo %date% %time% > date_time.txt
echo this batch file copies the matlab crack dll to the correct folder to simplify this process without error
del tempCodeRunnerFile.bat
echo copies the libmwlmgrimpl.dll to lmgrimpl directory in Matlab install root folder
copy /y *.dll D:\Program Files\Matlab\bin\win64\matlab_startup_plugins\lmgrimpl
echo successfully copied
rem successfully copied
start "" %matlab%
rem starting matlab 
start  "" %matlab_exe%
echo off 