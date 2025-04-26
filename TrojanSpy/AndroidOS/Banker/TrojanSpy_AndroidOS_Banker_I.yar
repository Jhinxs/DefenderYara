
rule TrojanSpy_AndroidOS_Banker_I{
	meta:
		description = "TrojanSpy:AndroidOS/Banker.I,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {65 6d 70 6c 79 65 5f 61 64 61 70 } //1 emplye_adap
		$a_01_1 = {63 61 6c 6c 73 5f 61 6c 6c 5f 73 65 6e 74 } //1 calls_all_sent
		$a_01_2 = {53 6f 72 72 79 20 61 70 70 20 63 61 6e 27 74 20 77 69 74 68 6f 75 74 20 61 6c 6c 20 70 65 72 6d 69 73 73 69 6f 6e 73 } //1 Sorry app can't without all permissions
		$a_01_3 = {6c 6f 67 69 6e 5f 6b 6f 74 61 6b 5f 75 6e 73 75 63 63 65 73 73 66 75 6c 6c } //1 login_kotak_unsuccessfull
		$a_01_4 = {61 6c 6c 5f 73 6d 73 5f 72 65 63 65 69 76 65 64 } //1 all_sms_received
		$a_01_5 = {44 41 54 41 5f 61 70 70 5f 61 6c 65 72 74 } //1 DATA_app_alert
		$a_01_6 = {3c 3e 73 6d 73 5f 61 70 70 } //1 <>sms_app
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=5
 
}