
rule VirTool_Win32_Obfuscator_ER{
	meta:
		description = "VirTool:Win32/Obfuscator.ER,SIGNATURE_TYPE_PEHSTR_EXT,02 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {bb 04 00 00 00 83 eb 02 ba 15 12 40 00 f7 d3 f7 db 81 fc 54 45 02 00 30 1a 83 ea 05 90 83 c2 06 81 fa 15 1a 41 00 75 e5 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule VirTool_Win32_Obfuscator_ER_2{
	meta:
		description = "VirTool:Win32/Obfuscator.ER,SIGNATURE_TYPE_PEHSTR_EXT,02 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {64 a1 30 00 00 00 8b 40 0c 8b 40 1c 8b 00 8b 40 08 89 45 ?? 8b 45 ?? 25 00 00 ff ff 81 38 4d 5a ?? ?? 74 ?? 2d 00 00 01 00 eb ?? 89 45 ?? e8 00 00 00 00 58 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}