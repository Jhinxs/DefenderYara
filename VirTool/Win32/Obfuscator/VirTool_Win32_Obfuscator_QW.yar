
rule VirTool_Win32_Obfuscator_QW{
	meta:
		description = "VirTool:Win32/Obfuscator.QW,SIGNATURE_TYPE_PEHSTR_EXT,32 00 16 00 06 00 00 "
		
	strings :
		$a_01_0 = {27 fd fc fc 21 fd fb fc 49 fd e6 fc 24 fd e5 fc 58 } //10
		$a_01_1 = {3d fd e3 fc fc fc e0 fc 18 40 19 41 09 51 36 } //10
		$a_01_2 = {49 00 69 00 75 00 64 00 65 00 75 00 79 00 4a 00 48 00 6a 00 64 00 } //1 IiudeuyJHjd
		$a_01_3 = {4b 00 4a 00 6b 00 6c 00 6a 00 4c 00 4a 00 44 00 6b 00 68 00 75 00 55 00 48 00 44 00 } //1 KJkljLJDkhuUHD
		$a_01_4 = {49 00 55 00 44 00 45 00 49 00 44 00 4a 00 4b 00 6a 00 68 00 64 00 68 00 } //1 IUDEIDJKjhdh
		$a_01_5 = {4e 00 44 00 4a 00 4b 00 64 00 6a 00 6b 00 68 00 4b 00 4a 00 4e 00 44 00 } //1 NDJKdjkhKJND
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=22
 
}