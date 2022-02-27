echo on
set logger=matlab_log_update.txt 
if exists %logger%
(
    call :log > %logger%
)
else 
(
    exit /b 1
)
:log
echo this batch file copies the matlab crack dll to the correct folder to simplify this process without error
set dll_dir = C:\Users\lordx\Desktop\libmwlmgrimpl.dll
set matlab_plugin_dir = C:\Users\lordx\Desktop\libmwlmgrimpl.dll
set matlab = D:\Program Files\Matlab\bin\matlab.exe
echo copies the libmwlmgrimpl.dll to lmgrimpl directory in Matlab install root folder
copy /y %dll_dir% %matlab_plugin_dir%
echo successfully copied
cd %matlab_plugin_dir%
start %matlab%
echo off 