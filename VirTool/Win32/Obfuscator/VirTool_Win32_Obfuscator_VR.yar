
rule VirTool_Win32_Obfuscator_VR{
	meta:
		description = "VirTool:Win32/Obfuscator.VR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {b8 00 00 00 80 3b c8 0f 82 ?? ?? ?? ?? 8d 4d d4 3b c8 0f 82 ?? ?? ?? ?? 8d 45 f0 3d 00 00 ff 7f 0f 82 } //1
		$a_03_1 = {8b 10 03 d7 89 14 8e 41 83 c0 04 83 f9 ?? 7c f0 } //1
		$a_01_2 = {8b 46 58 8d 4f 68 51 8b 4e 38 2b c8 51 50 ff 56 4c } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}