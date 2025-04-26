
rule Ransom_Win32_CONTI_DC_MTB{
	meta:
		description = "Ransom:Win32/CONTI.DC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_81_0 = {63 6f 6e 74 69 72 65 63 6f 76 65 72 79 } //1 contirecovery
		$a_81_1 = {59 4f 55 20 53 48 4f 55 4c 44 20 42 45 20 41 57 41 52 45 21 } //1 YOU SHOULD BE AWARE!
		$a_81_2 = {2e 6f 6e 69 6f 6e } //1 .onion
		$a_81_3 = {2d 2d 2d 42 45 47 49 4e 20 49 44 2d 2d 2d } //1 ---BEGIN ID---
		$a_81_4 = {54 4f 52 20 56 45 52 53 49 4f 4e 20 3a } //1 TOR VERSION :
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}