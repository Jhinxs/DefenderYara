
rule Ransom_Win64_CatB_A_MTB{
	meta:
		description = "Ransom:Win64/CatB.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {59 6f 75 72 20 66 69 6c 65 73 20 61 72 65 20 65 6e 63 72 79 70 74 65 64 } //1 Your files are encrypted
		$a_01_1 = {42 69 74 63 6f 69 6e } //1 Bitcoin
		$a_01_2 = {64 61 74 61 20 6c 6f 73 73 } //1 data loss
		$a_01_3 = {46 72 65 65 20 64 65 63 72 79 70 74 69 6f 6e } //1 Free decryption
		$a_01_4 = {63 61 74 42 } //1 catB
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}