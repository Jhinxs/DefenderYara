
rule VirTool_Win32_Obfuscator_ANY{
	meta:
		description = "VirTool:Win32/Obfuscator.ANY,SIGNATURE_TYPE_PEHSTR_EXT,64 00 04 00 07 00 00 "
		
	strings :
		$a_01_0 = {81 f9 00 2c 00 00 72 e7 } //1
		$a_01_1 = {81 fa 00 2c 00 00 72 e0 } //1
		$a_01_2 = {7e 11 ff 75 10 ff 75 0c 68 05 0d 00 00 ff d0 5d c2 0c 00 5d ff e0 } //2
		$a_01_3 = {8b 4d fc 47 83 45 08 02 83 c1 04 89 4d fc 3b 7e 18 72 da } //1
		$a_01_4 = {74 11 8b 7e 20 8b 5e 24 03 f9 03 d9 89 55 08 3b c2 77 0a } //1
		$a_03_5 = {6a 6e 59 0f 44 c1 ff 05 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? a2 ?? ?? ?? ?? 85 c9 75 0b } //1
		$a_03_6 = {6a 58 5a 0f 44 c2 a2 ?? ?? ?? ?? a1 ?? ?? ?? ?? 85 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1) >=4
 
}