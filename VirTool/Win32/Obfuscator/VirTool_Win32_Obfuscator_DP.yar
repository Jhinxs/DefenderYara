
rule VirTool_Win32_Obfuscator_DP{
	meta:
		description = "VirTool:Win32/Obfuscator.DP,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {4c 4c 30 0f e8 } //2
		$a_01_1 = {4c 81 f9 33 32 04 00 e8 } //1
		$a_01_2 = {4c 81 fa 22 01 00 00 e8 } //1
		$a_01_3 = {4c 4c f3 a6 e8 } //1
		$a_03_4 = {72 6f 74 65 [0-04] e8 } //1
		$a_01_5 = {4c 8d 80 4e 6c 00 00 } //1
		$a_01_6 = {4c 8d 88 00 60 00 00 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=5
 
}