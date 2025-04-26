
rule Ransom_Win32_L0v3sh3_AA_MTB{
	meta:
		description = "Ransom:Win32/L0v3sh3.AA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_81_0 = {2e 4c 30 76 33 73 68 33 } //1 .L0v3sh3
		$a_81_1 = {2e 70 61 79 6d 65 31 30 30 75 73 64 7a } //1 .payme100usdz
		$a_81_2 = {50 61 79 4d 65 } //1 PayMe
		$a_81_3 = {65 6e 63 72 79 70 74 65 64 53 65 73 73 69 6f 6e 4b 65 79 } //1 encryptedSessionKey
		$a_81_4 = {65 6e 63 72 79 70 74 65 64 46 69 6c 65 } //1 encryptedFile
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}