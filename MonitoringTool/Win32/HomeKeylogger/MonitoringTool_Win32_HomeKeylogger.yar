
rule MonitoringTool_Win32_HomeKeylogger{
	meta:
		description = "MonitoringTool:Win32/HomeKeylogger,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {48 4f 4d 45 4b 45 59 4c 4f 47 47 45 52 5f 4d 55 54 45 58 } //2 HOMEKEYLOGGER_MUTEX
		$a_01_1 = {43 4b 4d 69 4e 54 32 31 48 4f 4d 45 4b 45 59 4c 4f 47 47 45 52 } //2 CKMiNT21HOMEKEYLOGGER
		$a_01_2 = {49 20 63 61 6e 27 74 20 73 65 74 20 4b 65 79 62 6f 61 72 64 20 48 6f 6f 6b 21 } //1 I can't set Keyboard Hook!
		$a_01_3 = {49 20 63 61 6e 20 63 72 65 61 74 65 20 6d 61 69 6e 20 77 69 6e 64 6f 77 21 } //1 I can create main window!
		$a_01_4 = {49 6e 73 74 61 6c 6c 4b 65 79 62 6f 61 72 64 48 6f 6f 6b } //1 InstallKeyboardHook
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}