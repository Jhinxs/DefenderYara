
rule TrojanSpy_AndroidOS_Banker_X_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/Banker.X!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {47 50 68 6f 6e 65 52 65 63 69 76 65 72 } //1 GPhoneReciver
		$a_01_1 = {70 68 6f 6e 65 5f 64 65 74 61 69 6c } //1 phone_detail
		$a_01_2 = {62 61 6e 6b 6c 69 73 74 } //1 banklist
		$a_01_3 = {44 65 41 64 6d 69 6e 52 65 63 69 76 65 72 } //1 DeAdminReciver
		$a_01_4 = {4c 63 6f 6d 2f 76 69 76 61 63 6c 61 6f 2f 73 79 6e 63 73 65 72 76 69 63 65 } //1 Lcom/vivaclao/syncservice
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}