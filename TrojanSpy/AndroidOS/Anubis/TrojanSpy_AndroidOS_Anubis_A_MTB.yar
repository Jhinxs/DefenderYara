
rule TrojanSpy_AndroidOS_Anubis_A_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/Anubis.A!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,07 00 07 00 08 00 00 "
		
	strings :
		$a_00_0 = {7c 41 74 74 65 6d 70 74 20 74 6f 20 72 65 6d 6f 76 65 20 6d 61 6c 77 61 72 65 20 } //2 |Attempt to remove malware 
		$a_00_1 = {7c 73 74 61 72 74 72 61 74 3d } //1 |startrat=
		$a_00_2 = {49 6e 66 6f 20 2b 20 47 72 61 62 62 65 72 20 63 61 72 64 73 } //1 Info + Grabber cards
		$a_00_3 = {73 74 72 5f 70 75 73 68 5f 66 69 73 68 } //1 str_push_fish
		$a_00_4 = {73 70 61 6d 53 4d 53 } //1 spamSMS
		$a_00_5 = {70 65 72 65 68 76 61 74 5f 73 77 73 } //1 perehvat_sws
		$a_00_6 = {7c 53 74 61 72 74 20 69 6e 6a 65 63 74 69 6f 6e 20 } //1 |Start injection 
		$a_00_7 = {62 75 74 74 6f 6e 50 6c 61 79 50 72 6f 74 65 63 74 } //1 buttonPlayProtect
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=7
 
}