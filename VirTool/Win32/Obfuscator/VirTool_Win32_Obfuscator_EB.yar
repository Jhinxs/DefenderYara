
rule VirTool_Win32_Obfuscator_EB{
	meta:
		description = "VirTool:Win32/Obfuscator.EB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 07 00 08 00 00 "
		
	strings :
		$a_01_0 = {66 c7 45 e0 73 73 } //1
		$a_01_1 = {c6 45 e2 00 } //1
		$a_01_2 = {68 01 68 00 00 } //1
		$a_01_3 = {68 03 80 00 00 } //1
		$a_01_4 = {c7 45 e3 4b 65 72 6e } //1
		$a_01_5 = {c7 45 eb 2e 64 6c 6c } //1
		$a_01_6 = {c7 45 cc 56 69 72 74 } //1
		$a_01_7 = {c7 45 d4 72 6f 74 65 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=7
 
}