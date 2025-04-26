
rule Ransom_MSIL_Jasmin_DB_MTB{
	meta:
		description = "Ransom:MSIL/Jasmin.DB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {4a 61 73 6d 69 6e 20 45 6e 63 72 79 70 74 6f 72 } //1 Jasmin Encryptor
		$a_81_1 = {2e 6a 61 73 6d 69 6e } //1 .jasmin
		$a_81_2 = {65 72 72 6f 72 20 68 61 20 62 68 61 69 79 61 } //1 error ha bhaiya
		$a_81_3 = {6a 61 73 6d 69 6e 40 31 32 33 } //1 jasmin@123
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}