
rule TrojanSpy_AndroidOS_Androrat_D_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/Androrat.D!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {49 6e 74 65 72 63 65 70 74 43 61 6c 6c } //1 InterceptCall
		$a_01_1 = {63 61 6c 6c 4c 6f 67 4f 62 73 65 72 76 65 72 } //1 callLogObserver
		$a_01_2 = {49 6e 74 65 72 63 65 70 74 53 6d 73 } //1 InterceptSms
		$a_01_3 = {42 6f 6f 74 43 6f 6d 70 6c 61 74 65 42 72 6f 61 64 63 61 73 74 } //1 BootComplateBroadcast
		$a_01_4 = {4d 4f 4e 49 54 4f 52 5f 43 41 4c 4c 5f 52 45 43 4f 52 44 49 4e 47 } //1 MONITOR_CALL_RECORDING
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}