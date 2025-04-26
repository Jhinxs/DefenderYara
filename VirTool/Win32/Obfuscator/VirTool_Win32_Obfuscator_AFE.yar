
rule VirTool_Win32_Obfuscator_AFE{
	meta:
		description = "VirTool:Win32/Obfuscator.AFE,SIGNATURE_TYPE_PEHSTR_EXT,ffffff96 00 78 00 06 00 00 "
		
	strings :
		$a_01_0 = {47 65 74 53 79 73 74 65 6d 50 6f 77 65 72 53 74 61 74 75 73 00 } //50
		$a_01_1 = {4e 74 50 6f 77 65 72 49 6e 66 6f 72 6d 61 74 69 6f 6e 00 } //50
		$a_03_2 = {c6 02 e9 b9 ?? ?? ?? ?? a1 ?? ?? ?? ?? 2b c8 83 e9 05 89 48 01 68 } //10
		$a_03_3 = {ff d6 50 ff d7 8d 55 ?? 52 ff d0 } //10
		$a_03_4 = {c6 00 e9 b9 ?? ?? ?? 00 a1 ?? ?? ?? 00 2b c8 83 e9 05 89 48 01 } //10
		$a_01_5 = {ff d6 50 ff d7 8d 4d d0 51 ff d0 } //10
	condition:
		((#a_01_0  & 1)*50+(#a_01_1  & 1)*50+(#a_03_2  & 1)*10+(#a_03_3  & 1)*10+(#a_03_4  & 1)*10+(#a_01_5  & 1)*10) >=120
 
}