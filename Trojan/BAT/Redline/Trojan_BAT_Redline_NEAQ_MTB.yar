
rule Trojan_BAT_Redline_NEAQ_MTB{
	meta:
		description = "Trojan:BAT/Redline.NEAQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1f 00 0a 00 00 "
		
	strings :
		$a_01_0 = {63 00 6c 00 72 00 6a 00 69 00 74 00 2e 00 64 00 6c 00 6c 00 } //5 clrjit.dll
		$a_01_1 = {6c 53 66 67 41 70 61 74 6b 64 78 73 56 63 47 63 72 6b 74 6f 46 64 2e 72 65 73 6f 75 72 63 65 73 } //5 lSfgApatkdxsVcGcrktoFd.resources
		$a_01_2 = {6d 79 73 65 6c 66 2e 64 6c 6c } //4 myself.dll
		$a_01_3 = {55 77 56 75 71 4c 6c 4c 4a 76 70 72 41 6f 53 33 66 63 } //3 UwVuqLlLJvprAoS3fc
		$a_01_4 = {64 69 6c 32 42 50 67 63 6b 6a 6e 55 6c 4a 77 75 6b 75 } //3 dil2BPgckjnUlJwuku
		$a_01_5 = {62 71 4f 4f 6b 46 49 49 50 6d 54 37 62 39 4f 61 5a 43 } //3 bqOOkFIIPmT7b9OaZC
		$a_01_6 = {63 45 57 6c 73 59 42 55 45 30 } //3 cEWlsYBUE0
		$a_01_7 = {61 65 39 66 65 34 34 65 31 33 32 33 65 39 31 62 63 62 64 31 38 35 63 61 31 61 31 34 30 39 39 66 62 61 37 63 30 32 31 66 } //2 ae9fe44e1323e91bcbd185ca1a14099fba7c021f
		$a_01_8 = {31 33 2e 30 2e 31 2e 32 35 35 31 37 } //2 13.0.1.25517
		$a_01_9 = {67 65 74 5f 49 73 36 34 42 69 74 4f 70 65 72 61 74 69 6e 67 53 79 73 74 65 6d } //1 get_Is64BitOperatingSystem
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*4+(#a_01_3  & 1)*3+(#a_01_4  & 1)*3+(#a_01_5  & 1)*3+(#a_01_6  & 1)*3+(#a_01_7  & 1)*2+(#a_01_8  & 1)*2+(#a_01_9  & 1)*1) >=31
 
}