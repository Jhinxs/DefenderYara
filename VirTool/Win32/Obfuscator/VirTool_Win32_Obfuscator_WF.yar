
rule VirTool_Win32_Obfuscator_WF{
	meta:
		description = "VirTool:Win32/Obfuscator.WF,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {83 c0 02 3b ?? 75 0b 3d 70 17 00 00 0f 8c ?? 00 00 00 3d 1e 4e 00 00 7f 0e 41 81 f9 10 27 00 00 72 de e9 ?? ?? 00 00 } //1
		$a_01_1 = {68 00 00 02 00 68 00 60 01 00 68 00 00 04 00 } //1
		$a_03_2 = {83 fb 03 7e 04 33 db eb 01 43 [0-03] c5 1e 00 00 7c ?? 8b [0-03] b8 ?? ?? ?? 00 8b f7 b9 c6 1e 00 00 2b f0 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}