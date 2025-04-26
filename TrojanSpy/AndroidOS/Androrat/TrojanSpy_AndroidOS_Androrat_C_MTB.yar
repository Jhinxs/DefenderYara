
rule TrojanSpy_AndroidOS_Androrat_C_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/Androrat.C!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {4c 63 6f 6d 2f [0-08] 2f 61 70 70 63 6f 64 65 2f 61 70 70 63 6f 64 65 2f 4d 61 69 6e 41 63 74 69 76 69 74 79 } //1
		$a_01_1 = {43 61 6c 6c 52 65 63 6f 72 64 69 6e 67 } //1 CallRecording
		$a_01_2 = {6c 69 73 74 43 61 6c 6c 4c 6f 67 } //1 listCallLog
		$a_00_3 = {73 6d 73 4d 6f 6e 69 74 65 72 } //1 smsMoniter
		$a_01_4 = {61 70 70 63 6f 64 65 2f 53 63 72 65 65 6e 53 68 6f 74 } //1 appcode/ScreenShot
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}