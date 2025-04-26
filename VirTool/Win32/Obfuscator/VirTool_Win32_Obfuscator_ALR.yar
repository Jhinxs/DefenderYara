
rule VirTool_Win32_Obfuscator_ALR{
	meta:
		description = "VirTool:Win32/Obfuscator.ALR,SIGNATURE_TYPE_PEHSTR_EXT,03 00 01 00 04 00 00 "
		
	strings :
		$a_03_0 = {20 01 00 00 81 fa 00 40 02 00 0f 84 ?? 00 00 00 81 fa 00 a0 06 00 0f 84 ?? 00 00 00 } //1
		$a_01_1 = {83 ec 04 c7 04 24 90 01 00 00 83 ec 04 89 34 24 } //1
		$a_03_2 = {33 c9 8a 04 ?? 41 84 c0 75 f8 49 8b c1 } //1
		$a_01_3 = {83 ec 04 48 3d 0a 02 00 00 40 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=1
 
}