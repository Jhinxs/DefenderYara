
rule HackTool_Win32_Skender{
	meta:
		description = "HackTool:Win32/Skender,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {53 4b 59 50 45 34 43 4f 4d 4c 69 62 } //1 SKYPE4COMLib
		$a_00_1 = {6b 79 70 65 73 65 6e 64 65 72 2e 72 75 2f } //1 kypesender.ru/
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}