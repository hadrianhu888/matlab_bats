echo on
call :log > matlab_logger.txt 
if exist %filename%
(
    exit /b 1
)
else 
(
    call :log >> %filename%
)
:log
echo %date% %time% > date_time.txt
set datetimef=%date:~-4%_%date:~3,2%_%date:~0,2%__%time:~0,2%_%time:~3,2%_%time:~6,2%
echo %datetimef%
echo this batch file copies the matlab crack dll to the correct folder to simplify this process without error
del tempCodeRunnerFile.bat
echo copies the libmwlmgrimpl.dll to lmgrimpl directory in Matlab install root folder
copy /y *.dll D:\Program Files\Matlab\bin\win64\matlab_startup_plugins\lmgrimpl
echo successfully copied
rem successfully copied
cd D:\Program Files\Matlab\bin\win64\matlab_startup_plugins\lmgrimpl
start /d "D:\Program Files\Matlab\bin\matlab.exe"
echo off 