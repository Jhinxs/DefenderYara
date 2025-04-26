
rule VirTool_Win32_Obfuscator_ARL{
	meta:
		description = "VirTool:Win32/Obfuscator.ARL,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_03_0 = {e2 f5 8b 45 ?? 80 38 8b 75 01 c3 e8 ?? ?? ?? ?? 5f 83 c7 0d 57 53 ff 55 08 } //2
		$a_01_1 = {41 2b c2 78 04 74 02 eb f7 33 c0 03 c2 e2 fc } //1
		$a_01_2 = {58 81 78 64 00 02 00 00 75 0f 8b 04 24 c7 04 24 00 00 00 00 ff 74 24 04 50 ff e6 } //1
		$a_03_3 = {8b 09 33 c0 39 41 ?? 74 f7 ff 71 ?? 8f 45 ?? e8 ?? ?? ?? ?? 8f 41 1c 61 c3 58 ff d0 83 7c 24 08 02 } //1
		$a_01_4 = {3b 75 64 75 0d 03 75 68 03 7d 68 2b 4d 68 85 c9 74 13 ad 50 83 e8 0a 35 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*2) >=3
 
}