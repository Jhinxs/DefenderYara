
rule MonitoringTool_Win32_SteelKeylogger_A{
	meta:
		description = "MonitoringTool:Win32/SteelKeylogger.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {4b 00 65 00 79 00 73 00 74 00 72 00 6f 00 6b 00 65 00 73 00 20 00 61 00 72 00 65 00 20 00 6c 00 6f 00 67 00 67 00 65 00 64 00 20 00 69 00 6e 00 20 00 68 00 65 00 72 00 65 00 2e 00 2e 00 } //1 Keystrokes are logged in here..
		$a_01_1 = {68 00 69 00 64 00 65 00 20 00 74 00 6f 00 20 00 65 00 6e 00 74 00 65 00 72 00 20 00 69 00 6e 00 76 00 69 00 73 00 69 00 62 00 6c 00 65 00 20 00 6d 00 6f 00 64 00 65 00 } //1 hide to enter invisible mode
		$a_01_2 = {5b 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 4b 00 65 00 79 00 5d 00 } //1 [WindowsKey]
		$a_01_3 = {63 6c 69 70 62 6f 61 72 64 74 69 6d 65 72 } //1 clipboardtimer
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}