
rule Ransom_Linux_Babuk_F_MTB{
	meta:
		description = "Ransom:Linux/Babuk.F!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {48 8d 05 4e b6 00 00 48 89 c7 e8 f6 f7 ff ff } //1
		$a_00_1 = {70 61 74 68 2f 74 6f 2f 62 65 2f 65 6e 63 72 79 70 74 65 64 } //1 path/to/be/encrypted
		$a_01_2 = {48 8d 05 4a b6 00 00 48 89 c7 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}