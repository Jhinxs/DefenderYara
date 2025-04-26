
rule Ransom_Linux_Trigona_B_MTB{
	meta:
		description = "Ransom:Linux/Trigona.B!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {2e 5f 6c 6f 63 6b 65 64 } //1 ._locked
		$a_01_1 = {2f 65 72 61 73 65 } //1 /erase
		$a_01_2 = {6f 6e 65 70 61 74 68 65 6e 63 72 79 70 74 69 6f 6e 2e 70 61 73 } //1 onepathencryption.pas
		$a_01_3 = {2f 73 68 64 77 6e } //1 /shdwn
		$a_01_4 = {45 4e 43 52 59 50 54 4f 52 45 52 41 53 45 46 49 4c 45 42 59 50 41 54 48 } //1 ENCRYPTORERASEFILEBYPATH
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}