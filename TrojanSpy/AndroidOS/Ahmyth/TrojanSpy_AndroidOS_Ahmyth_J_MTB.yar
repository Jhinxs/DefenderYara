
rule TrojanSpy_AndroidOS_Ahmyth_J_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/Ahmyth.J!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {67 65 74 53 4d 53 4c 69 73 74 } //1 getSMSList
		$a_00_1 = {73 74 61 72 74 52 65 63 6f 72 64 69 6e 67 } //1 startRecording
		$a_00_2 = {67 65 74 43 61 6c 6c 73 4c 6f 67 73 } //1 getCallsLogs
		$a_00_3 = {74 61 6b 65 50 69 63 74 75 72 65 } //1 takePicture
		$a_00_4 = {67 65 74 43 6f 6e 74 61 63 74 73 } //1 getContacts
		$a_00_5 = {73 74 6f 70 55 73 69 6e 67 47 50 53 } //1 stopUsingGPS
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}