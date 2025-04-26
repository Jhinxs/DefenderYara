
rule VirTool_Win32_Obfuscator_GN{
	meta:
		description = "VirTool:Win32/Obfuscator.GN,SIGNATURE_TYPE_PEHSTR_EXT,64 00 0b 00 05 00 00 "
		
	strings :
		$a_03_0 = {8b 55 0c 8b 45 fc b9 ?? ?? ?? ?? 0f b6 30 6b c9 21 33 ce } //10
		$a_03_1 = {6b d2 42 0f b6 01 33 d0 41 [0-06] ff 4c 24 04 0f 85 } //10
		$a_03_2 = {8b 45 fc 8b d7 b9 ?? ?? ?? ?? 0f b6 30 6b c9 21 33 ce } //10
		$a_03_3 = {3b 4d 14 0f 85 ?? ?? ff ff } //1
		$a_03_4 = {3b 45 14 0f 85 ?? ?? ff ff } //1
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10+(#a_03_2  & 1)*10+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=11
 
}