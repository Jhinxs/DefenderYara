
rule Ransom_MSIL_Cring_DA_MTB{
	meta:
		description = "Ransom:MSIL/Cring.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {79 6f 75 72 20 6e 65 74 77 6f 72 6b 20 69 73 20 65 6e 63 72 79 70 74 65 64 } //1 your network is encrypted
		$a_81_1 = {43 72 79 70 74 33 72 } //1 Crypt3r
		$a_81_2 = {40 74 75 74 61 6e 6f 74 61 2e 63 6f 6d } //1 @tutanota.com
		$a_81_3 = {6b 69 6c 6c 6d 65 2e 62 61 74 } //1 killme.bat
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}