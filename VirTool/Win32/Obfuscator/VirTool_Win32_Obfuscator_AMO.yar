
rule VirTool_Win32_Obfuscator_AMO{
	meta:
		description = "VirTool:Win32/Obfuscator.AMO,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 0b 00 00 "
		
	strings :
		$a_01_0 = {4b 7a 6c 73 79 77 29 2b 00 } //1
		$a_01_1 = {41 7b 68 7c 6c 72 29 2b 00 } //1
		$a_01_2 = {4e 6b 7a 71 70 00 } //1 歎煺p
		$a_01_3 = {03 f7 8a 0e 0f be c1 33 c3 69 } //1
		$a_01_4 = {be bb b3 8a 68 } //1
		$a_01_5 = {ba 4a af 3b 94 } //1
		$a_01_6 = {ba 7e 00 3a 43 } //1
		$a_01_7 = {ba b5 83 75 26 } //1
		$a_01_8 = {ba 14 eb 45 17 } //1
		$a_01_9 = {ba d2 18 ab be } //1
		$a_01_10 = {ba 24 9e 93 83 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=3
 
}