
rule Ransom_MSIL_Cryptolocker_PDC_MTB{
	meta:
		description = "Ransom:MSIL/Cryptolocker.PDC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {52 61 73 6f 6d 77 61 72 65 32 2e 30 } //1 Rasomware2.0
		$a_81_1 = {5f 45 6e 63 72 79 70 74 65 64 24 } //1 _Encrypted$
		$a_81_2 = {52 58 68 6a 61 58 52 6c 55 6b 46 4f 4a 41 } //1 RXhjaXRlUkFOJA
		$a_81_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}
rule Ransom_MSIL_Cryptolocker_PDC_MTB_2{
	meta:
		description = "Ransom:MSIL/Cryptolocker.PDC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {59 6f 75 72 20 46 69 6c 65 73 20 57 65 72 65 20 45 6e 63 72 79 70 74 65 64 } //1 Your Files Were Encrypted
		$a_81_1 = {45 6e 63 72 79 70 74 65 64 20 79 6f 75 72 20 66 69 6c 65 73 20 73 75 63 63 65 73 73 66 75 6c 6c 79 } //1 Encrypted your files successfully
		$a_81_2 = {45 6e 63 72 79 70 74 20 79 6f 75 72 20 66 69 6c 65 73 } //1 Encrypt your files
		$a_81_3 = {2e 63 72 79 70 74 73 68 69 65 6c 64 } //1 .cryptshield
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}