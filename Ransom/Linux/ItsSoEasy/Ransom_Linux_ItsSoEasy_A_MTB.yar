
rule Ransom_Linux_ItsSoEasy_A_MTB{
	meta:
		description = "Ransom:Linux/ItsSoEasy.A!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {61 63 74 46 69 6c 65 20 65 6e 63 72 79 70 74 44 61 74 61 } //1 actFile encryptData
		$a_01_1 = {2f 69 74 73 73 6f 65 61 73 79 2e 68 74 6d 6c } //1 /itssoeasy.html
		$a_01_2 = {65 6e 63 72 79 70 74 65 64 46 69 6c 65 44 42 } //1 encryptedFileDB
		$a_01_3 = {69 64 65 6e 74 46 69 6c 65 20 72 65 6d 6f 76 65 41 6c 6c 46 69 6c 65 73 } //1 identFile removeAllFiles
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}