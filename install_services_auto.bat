	@echo off

	set WORK_DIR=%~dp0
	cd /d %WORK_DIR%

	NET STOP MySQL
	.\MySQL8\bin\mysqld.exe --remove MySQL
	.\MySQL8\bin\mysqld.exe --install MySQL
	NET START MySQL




	rem 设置需要启动的端口
	set OTHERPORT=80,8000,8080,8888,10180,3308
		
	rem 启用防火墙非常规端口
	FOR %%c in (%OTHERPORT%) do (
		SET PORT=%%c
		call :input	
		)
	pause

	rem 入栈规则
	:input
	set INPUTPORT=%PORT%
	set INPUT_RULE_NAME="_%INPUTPORT% 入栈规则"
	netsh advfirewall firewall show rule name=%INPUT_RULE_NAME% >nul
	if not ERRORLEVEL 1 (
		echo 对不起，规则 %INPUT_RULE_NAME% 已经存在
	) else (
		netsh advfirewall firewall add rule name=%INPUT_RULE_NAME% dir=in action=allow protocol=TCP localport=%INPUTPORT%
		echo 规则 %INPUT_RULE_NAME% 创建成功
	) 



	cd /D %~dp0
	echo ------------------REGISTER COM for X86 .NetFramework4.0-----------------------
	if not exist %SYSTEMROOT%\Microsoft.NET\Framework\v4.0.30319\regasm.exe goto PathNotExist

	:register
	%SYSTEMROOT%\Microsoft.NET\Framework\v4.0.30319\regasm.exe Server/POSLink.dll /codebase
	pause
	exit

	:PathNotExist
	echo Error: Can not find Regasm.exe. Please install .NetFramework4.0.
	pause
	exit
