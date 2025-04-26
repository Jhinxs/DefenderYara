
rule MonitoringTool_Win32_EliteKeylogger{
	meta:
		description = "MonitoringTool:Win32/EliteKeylogger,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {49 6e 76 69 73 69 62 6c 65 20 6d 6f 64 65 } //1 Invisible mode
		$a_00_1 = {53 6f 66 74 77 61 72 65 5c 57 69 64 65 53 74 65 70 5c 45 6c 69 74 65 4b 65 79 6c 6f 67 67 65 72 } //1 Software\WideStep\EliteKeylogger
		$a_02_2 = {57 69 64 65 53 74 65 70 20 45 6c 69 74 65 20 4b 65 79 6c 6f 67 67 65 72 [0-10] 5b 62 75 69 6c 64 [0-10] 5d [0-02] 53 65 74 75 70 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}