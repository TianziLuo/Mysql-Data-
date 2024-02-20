	rem SetPort
	set OTHERPORT=80,8000,8080,8888,10180,3306,3308,8808
		
	rem SET Firewall
	netsh advfirewall firewall add rule name="_Ping" dir=in protocol=icmpv4 action=allow
	netsh advfirewall firewall add rule name="HTTP" protocol=TCP dir=in localport=80 action=allow
	netsh advfirewall firewall add rule name="HTTP" protocol=TCP dir=in localport=8080 action=allow
	netsh advfirewall firewall add rule name="HTTP" protocol=TCP dir=in localport=8888 action=allow
	netsh advfirewall firewall add rule name="HTTP" protocol=TCP dir=in localport=8808 action=allow

	rem SET Special Firewall 
	FOR %%c in (%OTHERPORT%) do (
		SET PORT=%%c
		call :input
		call :output		
		)
	pause

	rem  Input Rules
	:input
	set INPUTPORT=%PORT%
	set INPUT_RULE_NAME="_%INPUTPORT% Rules"
	netsh advfirewall firewall show rule name=%INPUT_RULE_NAME% >nul
	if not ERRORLEVEL 1 (
		echo Rules %INPUT_RULE_NAME% Exist
	) else (
		netsh advfirewall firewall add rule name=%INPUT_RULE_NAME% dir=in action=allow protocol=TCP localport=%INPUTPORT%
		echo Rules %INPUT_RULE_NAME% Created
	) 

	rem Output Rules
	:output
	set OUTPORT=%PORT%
	set OUT_RULE_NAME="_%OUTPORT% Rules"
	netsh advfirewall firewall show rule name=%OUT_RULE_NAME% >nul
	if not ERRORLEVEL 1 (
		echo Rules %OUT_RULE_NAME% Exist
	) else (
		netsh advfirewall firewall add rule name=%OUT_RULE_NAME% dir=out action=allow protocol=TCP localport=%OUTPORT%
		echo Rules %OUT_RULE_NAME% Created
	) 