
rule MonitoringTool_MSIL_Amnesia{
	meta:
		description = "MonitoringTool:MSIL/Amnesia,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {41 00 6d 00 6e 00 65 00 73 00 69 00 61 00 20 00 4b 00 65 00 79 00 4c 00 6f 00 67 00 67 00 65 00 72 00 } //1 Amnesia KeyLogger
		$a_01_1 = {54 00 6f 00 20 00 42 00 72 00 69 00 6e 00 67 00 20 00 55 00 70 00 20 00 41 00 67 00 61 00 69 00 6e 00 20 00 41 00 66 00 74 00 65 00 72 00 20 00 48 00 69 00 64 00 69 00 6e 00 67 00 20 00 3a 00 20 00 43 00 74 00 72 00 6c 00 2b 00 41 00 6c 00 74 00 2b 00 5a 00 } //1 To Bring Up Again After Hiding : Ctrl+Alt+Z
		$a_01_2 = {5c 00 4c 00 6f 00 67 00 2e 00 74 00 78 00 74 00 } //1 \Log.txt
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}