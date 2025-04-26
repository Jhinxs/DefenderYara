
rule Ransom_MSIL_KawaiiCrypt_PA_MTB{
	meta:
		description = "Ransom:MSIL/KawaiiCrypt.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {59 00 6f 00 75 00 72 00 20 00 73 00 79 00 73 00 74 00 65 00 6d 00 20 00 68 00 61 00 73 00 20 00 62 00 65 00 65 00 6e 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 21 00 } //1 Your system has been encrypted!
		$a_03_1 = {68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 [0-10] 62 79 20 4b 41 57 41 49 49 20 72 61 6e 73 6f 6d 77 61 72 65 } //1
		$a_01_2 = {5c 41 6e 69 6d 65 2e 70 64 62 } //1 \Anime.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}