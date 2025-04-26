
rule Ransom_MSIL_Filecoder_RPU_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.RPU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {76 00 69 00 65 00 74 00 63 00 6f 00 6d 00 62 00 61 00 6e 00 6b 00 73 00 2e 00 74 00 6b 00 } //1 vietcombanks.tk
		$a_01_1 = {44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 52 00 45 00 41 00 44 00 4d 00 45 00 2e 00 74 00 78 00 74 00 } //1 Desktop\README.txt
		$a_01_2 = {59 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //1 Your files have been encrypted
		$a_01_3 = {61 00 68 00 69 00 68 00 69 00 40 00 72 00 69 00 70 00 79 00 6f 00 6e 00 2e 00 6d 00 65 00 } //1 ahihi@ripyon.me
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}