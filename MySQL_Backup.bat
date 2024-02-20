@echo off
set "$=%temp%\Spring"
>%$% Echo WScript.Echo((new Date()).getTime())
for /f %%a in ('cscript -nologo -e:jscript %$%') do set timestamp=%%a
del /f /q %$%

set filename=%timestamp%
 
set WORK_DIR=%~dp0
cd /d %WORK_DIR%
 
.\MySQL8\bin\mysqldump.exe>mysqldump --opt -P3308 -u root --password=123456 userve >MySQL_Backup\userve_%filename%.sql
 

forfiles /p "MySQL_Backup" /s /m *.sql /d -7 /c "cmd /c del /f @path"