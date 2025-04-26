
rule VirTool_Win32_Obfuscator_LL{
	meta:
		description = "VirTool:Win32/Obfuscator.LL,SIGNATURE_TYPE_PEHSTR_EXT,64 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {8b 5d fc 8b 4d f8 41 31 c0 83 e8 62 f7 d0 83 f8 47 75 03 c2 08 00 } //1
		$a_03_1 = {32 d2 01 d8 29 c1 43 8a 53 ff 3a 15 ?? ?? ?? 00 75 ?? 8a 53 01 3a 15 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}