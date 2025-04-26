
rule MonitoringTool_Win32_ShadowKeylogger{
	meta:
		description = "MonitoringTool:Win32/ShadowKeylogger,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 20 00 66 00 6f 00 72 00 20 00 73 00 74 00 6f 00 70 00 70 00 69 00 6e 00 67 00 20 00 74 00 68 00 65 00 20 00 6b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 69 00 6e 00 67 00 20 00 70 00 72 00 6f 00 63 00 63 00 65 00 73 00 73 00 2e 00 } //1 Password for stopping the keylogging proccess.
		$a_00_1 = {45 00 6e 00 61 00 62 00 6c 00 65 00 20 00 53 00 63 00 72 00 65 00 65 00 6e 00 73 00 68 00 6f 00 74 00 20 00 43 00 61 00 70 00 74 00 75 00 72 00 69 00 6e 00 67 00 } //1 Enable Screenshot Capturing
		$a_01_2 = {53 68 61 64 6f 77 5f 4b 65 79 6c 6f 67 67 65 72 2e 52 65 73 6f 75 72 63 65 73 } //2 Shadow_Keylogger.Resources
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*2) >=3
 
}