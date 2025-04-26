
rule VirTool_Win32_Obfuscator_DX{
	meta:
		description = "VirTool:Win32/Obfuscator.DX,SIGNATURE_TYPE_PEHSTR_EXT,05 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {53 5e 81 e9 ?? ?? ?? ?? 8b 56 40 53 81 e1 ?? ?? ?? ?? 66 2b d2 66 c1 cf 09 52 57 66 83 ?? ?? a1 ?? ?? ?? ?? 03 14 24 ff d0 e9 } //1
		$a_02_1 = {ff d0 59 ba ?? ?? ?? ?? f7 d2 8b b2 4c 00 00 00 21 ef f7 d2 41 29 ef 8b 01 81 f2 bd a8 46 0d 29 f0 85 c0 75 ed } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}