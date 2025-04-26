
rule TrojanSpy_AndroidOS_Banker_K_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/Banker.K!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 04 00 00 "
		
	strings :
		$a_02_0 = {4c 63 6f 6d 2f 65 78 61 6d 70 6c 65 2f [0-20] 2f 42 61 6e 6b 3b } //2
		$a_02_1 = {4c 63 6f 6d 2f 65 78 61 6d 70 6c 65 2f [0-20] 2f 41 63 63 65 73 73 69 62 69 6c 69 74 79 53 65 72 76 69 63 65 3b } //2
		$a_00_2 = {2f 53 6d 73 52 65 63 65 69 76 65 72 3b } //1 /SmsReceiver;
		$a_00_3 = {66 69 6e 64 41 63 63 65 73 73 69 62 69 6c 69 74 79 4e 6f 64 65 49 6e 66 6f 73 42 79 54 65 78 74 } //1 findAccessibilityNodeInfosByText
	condition:
		((#a_02_0  & 1)*2+(#a_02_1  & 1)*2+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=6
 
}