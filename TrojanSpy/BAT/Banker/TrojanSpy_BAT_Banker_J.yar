
rule TrojanSpy_BAT_Banker_J{
	meta:
		description = "TrojanSpy:BAT/Banker.J,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 05 00 00 "
		
	strings :
		$a_01_0 = {6e 00 65 00 65 00 64 00 20 00 74 00 6f 00 20 00 72 00 65 00 67 00 69 00 73 00 74 00 65 00 72 00 20 00 79 00 6f 00 75 00 72 00 20 00 6d 00 65 00 6d 00 6f 00 72 00 61 00 62 00 6c 00 65 00 20 00 69 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 } //3 need to register your memorable information
		$a_01_1 = {74 00 78 00 74 00 61 00 74 00 6d 00 70 00 69 00 6e 00 } //3 txtatmpin
		$a_01_2 = {41 6c 6c 69 61 6e 63 65 4d 65 6d 6f 2e 72 65 73 6f 75 72 63 65 73 } //1 AllianceMemo.resources
		$a_01_3 = {46 6f 72 6d 43 61 72 64 44 65 74 61 69 6c 73 32 2e 72 65 73 6f 75 72 63 65 73 } //1 FormCardDetails2.resources
		$a_01_4 = {53 61 6e 4d 65 6d 6f 2e 72 65 73 6f 75 72 63 65 73 } //1 SanMemo.resources
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=6
 
}