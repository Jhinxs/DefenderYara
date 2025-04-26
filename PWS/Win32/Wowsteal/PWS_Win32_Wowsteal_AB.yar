
rule PWS_Win32_Wowsteal_AB{
	meta:
		description = "PWS:Win32/Wowsteal.AB,SIGNATURE_TYPE_PEHSTR_EXT,34 00 34 00 0a 00 00 "
		
	strings :
		$a_00_0 = {2e 77 6f 72 6c 64 6f 66 77 61 72 63 72 61 66 74 2e } //10 .worldofwarcraft.
		$a_00_1 = {4e 74 55 6e 6d 61 70 56 69 65 77 4f 66 53 65 63 74 69 6f 6e } //10 NtUnmapViewOfSection
		$a_00_2 = {47 45 54 00 6f 6e 6c 69 6e 65 67 61 6d 65 } //10 䕇T湯楬敮慧敭
		$a_00_3 = {53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //10 SeDebugPrivilege
		$a_00_4 = {77 77 77 2e 73 68 65 68 61 65 61 2e 63 6f 6d } //10 www.shehaea.com
		$a_01_5 = {77 6f 77 2e 64 6c 6c 00 53 65 72 76 69 63 65 4d 61 69 6e } //1
		$a_01_6 = {57 72 69 74 65 50 72 69 76 61 74 65 50 72 6f 66 69 6c 65 53 74 72 69 6e 67 41 } //1 WritePrivateProfileStringA
		$a_01_7 = {73 65 63 72 65 74 51 75 65 73 74 69 6f 6e 41 6e 73 77 65 72 } //1 secretQuestionAnswer
		$a_00_8 = {77 00 6f 00 77 00 69 00 6e 00 66 00 6f 00 } //1 wowinfo
		$a_00_9 = {67 72 75 6e 74 2e 77 6f 77 63 68 69 6e 61 2e 63 6f 6d } //1 grunt.wowchina.com
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1) >=52
 
}