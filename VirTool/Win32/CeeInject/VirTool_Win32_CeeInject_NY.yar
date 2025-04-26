
rule VirTool_Win32_CeeInject_NY{
	meta:
		description = "VirTool:Win32/CeeInject.NY,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {00 4d 61 69 6e 00 00 00 00 57 6f 72 6b 65 72 00 } //1
		$a_01_1 = {12 65 63 79 63 6c 2e 02 69 6e 1c 74 61 73 6b 68 6f 73 74 2e 65 78 65 c0 } //1
		$a_01_2 = {c0 13 65 72 76 65 72 03 6f 72 65 2e 64 61 74 c0 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}