
rule MonitoringTool_Win32_Ardamax_A_MSR{
	meta:
		description = "MonitoringTool:Win32/Ardamax.A!MSR,SIGNATURE_TYPE_PEHSTR,0d 00 0d 00 05 00 00 "
		
	strings :
		$a_01_0 = {4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 73 00 2e 00 72 00 6f 00 20 00 44 00 69 00 73 00 74 00 72 00 69 00 62 00 75 00 74 00 69 00 6f 00 6e 00 } //1 Keyloggers.ro Distribution
		$a_01_1 = {6b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 76 00 69 00 65 00 77 00 65 00 72 00 } //1 keylogger viewer
		$a_01_2 = {6d 00 73 00 6e 00 6d 00 73 00 67 00 72 00 2e 00 65 00 78 00 65 00 } //1 msnmsgr.exe
		$a_01_3 = {61 00 72 00 64 00 61 00 6d 00 61 00 78 00 } //10 ardamax
		$a_01_4 = {75 6e 68 6f 6f 6b 77 69 6e 64 6f 77 73 68 6f 6f 6b 65 78 } //1 unhookwindowshookex
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*10+(#a_01_4  & 1)*1) >=13
 
}