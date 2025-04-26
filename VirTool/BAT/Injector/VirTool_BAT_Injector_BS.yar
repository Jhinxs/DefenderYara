
rule VirTool_BAT_Injector_BS{
	meta:
		description = "VirTool:BAT/Injector.BS,SIGNATURE_TYPE_PEHSTR_EXT,09 00 08 00 05 00 00 "
		
	strings :
		$a_01_0 = {69 5d 91 03 06 03 8e 69 5d 91 61 02 06 17 58 02 8e 69 5d 91 59 20 00 01 00 00 58 0b 07 20 00 01 00 } //5
		$a_01_1 = {53 00 57 00 35 00 71 00 5a 00 57 00 4e 00 30 00 55 00 45 00 55 00 3d 00 } //1 SW5qZWN0UEU=
		$a_01_2 = {63 00 33 00 5a 00 6a 00 61 00 47 00 39 00 7a 00 64 00 41 00 3d 00 3d 00 } //1 c3ZjaG9zdA==
		$a_01_3 = {4b 00 49 00 4c 00 4c 00 41 00 4d 00 55 00 56 00 5a 00 } //1 KILLAMUVZ
		$a_01_4 = {4e 00 6f 00 59 00 6f 00 75 00 } //1 NoYou
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=8
 
}