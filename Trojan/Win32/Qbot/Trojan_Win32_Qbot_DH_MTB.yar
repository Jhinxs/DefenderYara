
rule Trojan_Win32_Qbot_DH_MTB{
	meta:
		description = "Trojan:Win32/Qbot.DH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0b 00 00 "
		
	strings :
		$a_81_0 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //10 DllRegisterServer
		$a_81_1 = {73 38 6e 36 61 34 61 61 2e 64 6c 6c } //1 s8n6a4aa.dll
		$a_81_2 = {63 46 4e 76 67 49 70 6c 43 42 76 74 65 6d 67 } //1 cFNvgIplCBvtemg
		$a_81_3 = {70 67 42 49 47 6e 4c 6d 74 46 58 70 4c } //1 pgBIGnLmtFXpL
		$a_81_4 = {48 47 47 76 56 65 55 6c 64 6b 75 } //1 HGGvVeUldku
		$a_81_5 = {76 62 69 73 66 49 68 61 55 52 } //1 vbisfIhaUR
		$a_81_6 = {5a 36 79 4e 4e 33 34 44 2e 6c 69 62 } //1 Z6yNN34D.lib
		$a_81_7 = {71 71 68 4a 73 61 7a 62 7a 59 45 4c } //1 qqhJsazbzYEL
		$a_81_8 = {78 57 70 55 50 56 7a 62 4f 74 49 48 77 52 } //1 xWpUPVzbOtIHwR
		$a_81_9 = {79 4f 66 56 6a 51 6f 74 63 46 6a 69 64 } //1 yOfVjQotcFjid
		$a_81_10 = {49 61 74 62 5a 70 63 65 6e 6b 49 } //1 IatbZpcenkI
	condition:
		((#a_81_0  & 1)*10+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1) >=15
 
}