
rule VirTool_Win32_Obfuscator_AEV{
	meta:
		description = "VirTool:Win32/Obfuscator.AEV,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {c7 45 e0 7d df af 18 c7 45 ec c0 24 ce ba c7 45 f4 01 00 00 00 } //1
		$a_01_1 = {4c 6f 6f 6b 43 72 79 70 74 } //1 LookCrypt
		$a_01_2 = {83 ec 28 c7 45 e0 7d df af 18 c7 45 ec c0 24 ce ba } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}