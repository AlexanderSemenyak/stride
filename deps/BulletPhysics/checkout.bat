@echo OFF
setlocal
set HOME=%USERPROFILE%
CALL ..\find_git.cmd
IF NOT ERRORLEVEL 0 (
  ECHO "Could not find git.exe"
  EXIT /B %ERRORLEVEL%
) 
%GIT_CMD% clone https://github.com/phr00t/bullet2-sharp-mobile.git ../../externals/bullet2-sharp-mobile
if NOT ERRORLEVEL 0 pause
