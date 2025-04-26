
rule VirTool_Win32_Obfuscator_AAC{
	meta:
		description = "VirTool:Win32/Obfuscator.AAC,SIGNATURE_TYPE_PEHSTR_EXT,05 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {83 f9 01 7e 13 8b c6 8d 51 ff 8b 78 fc 03 38 83 c0 04 4a 89 78 ?? 75 f2 } //1
		$a_03_1 = {f3 a5 89 45 ?? 8d 85 ?? ff ff ff 8b 48 04 03 08 03 c3 01 4d fc 4a 75 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule VirTool_Win32_Obfuscator_AAC_2{
	meta:
		description = "VirTool:Win32/Obfuscator.AAC,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {68 00 30 00 00 ff 76 50 ff 76 34 ff 55 ?? 85 c0 75 13 6a 40 68 00 30 00 00 ff 76 50 6a 00 ff 55 ?? 85 c0 74 75 89 45 ?? fc 56 8b 4e 54 8b 75 08 8b 7d ?? 33 c0 f3 a4 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}