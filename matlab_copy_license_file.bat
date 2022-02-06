REM this batch file copies the matlab crack dll to the correct folder to simplify this process without error
@echo on
REM copies the libmwlmgrimpl.dll to lmgrimpl directory in Matlab install root folder
xcopy "C:\Users\lordx\Desktop\libmwlmgrimpl.dll" "D:\Program Files\Matlab\bin\win64\matlab_startup_plugins\lmgrimpl"
REM successfully copied
%SystemRoot%\explorer.exe "D:\Program Files\Matlab\bin\win64\matlab_startup_plugins\lmgrimpl"
tasklist /V /FI "IMAGENAME eq explorer.exe" /FI "WINDOWTITLE eq C*"
taskkill /FI "IMAGENAME eq explorer.exe" /FI "WINDOWTITLE eq C*"
start "D:\Program Files\Matlab\bin\matlab.exe"
@echo off 