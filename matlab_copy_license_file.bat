echo on
echo date_time = %date% %time%
set filename=%date_time%logger.txt
call :log > %filename%
if exist %filename%
(
    call :log >> %filename%
)
else 
(
    exit /b 1
)
:log 
echo this batch file copies the matlab crack dll to the correct folder to simplify this process without error
set dll_dir = .\*.dll
set matlab = D:\Program Files\Matlab\bin\matlab.exe
echo copies the libmwlmgrimpl.dll to lmgrimpl directory in Matlab install root folder
copy /y *.dll D:\Program Files\Matlab\bin\win64\matlab_startup_plugins\lmgrimpl
echo successfully copied
cd D:\Program Files\Matlab\bin\win64\matlab_startup_plugins\lmgrimpl
start D:\Program Files\Matlab\bin\matlab.exe
echo off 