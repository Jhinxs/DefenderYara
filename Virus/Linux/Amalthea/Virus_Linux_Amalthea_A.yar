
rule Virus_Linux_Amalthea_A{
	meta:
		description = "Virus:Linux/Amalthea.A,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {2e 00 2e 63 00 2e 43 00 69 6e 69 74 5f 68 61 73 68 00 0a 6d 61 69 6e 28 00 0a 69 6e 74 20 6d 61 69 6e 28 00 } //1
		$a_01_1 = {3b 0a 09 63 68 61 72 20 68 61 73 68 62 65 67 5b 5d 20 3d 20 22 00 } //1
		$a_01_2 = {3b 0a 09 63 68 61 72 20 68 61 73 68 65 6e 64 5b 5d 20 3d 20 22 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}