echo on
set datetimef=%date:~-4%_%date:~3,2%_%date:~0,2%__%time:~0,2%_%time:~3,2%_%time:~6,2%
echo %datetimef%
call :log > %datetimef%_matlab_logger.txt 
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
start "" "D:\Program Files\Matlab\bin\win64\matlab_startup_plugins\lmgrimpl"
start  "" "D:\Program Files\Matlab\bin\matlab.exe"
echo off 