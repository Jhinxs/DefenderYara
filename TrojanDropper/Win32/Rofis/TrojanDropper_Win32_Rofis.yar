
rule TrojanDropper_Win32_Rofis{
	meta:
		description = "TrojanDropper:Win32/Rofis,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_02_0 = {68 02 00 00 80 ff [0-05] 0f [0-10] 51 56 6a 03 50 68 ?? ?? ?? ?? 52 ff } //1
		$a_02_1 = {6a 00 6a 00 6a 03 6a 00 6a 07 68 00 00 00 80 68 ?? ?? ?? ?? ff 15 } //1
		$a_02_2 = {6a 00 6a 05 68 ?? ?? ?? ?? ff 15 ?? ?? ?? ?? 50 ff 15 ?? ?? ?? ?? ff d0 0f 31 } //1
		$a_01_3 = {73 66 63 2e 64 6c 6c } //1 sfc.dll
		$a_01_4 = {52 65 67 53 65 74 56 61 6c 75 65 45 78 41 } //1 RegSetValueExA
		$a_00_5 = {53 68 65 6c 6c 43 6f 64 65 5c 78 52 65 6c 65 61 73 65 5c 53 68 65 6c 6c 43 6f 64 65 2e 70 64 62 } //1 ShellCode\xRelease\ShellCode.pdb
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}