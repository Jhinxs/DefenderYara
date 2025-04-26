
rule Ransom_Linux_Filecoder_P_MTB{
	meta:
		description = "Ransom:Linux/Filecoder.P!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {6d 61 69 6e 2e 65 6e 63 72 79 70 74 46 69 6c 65 } //1 main.encryptFile
		$a_01_1 = {73 61 76 65 4b 65 79 54 6f 46 69 6c 65 } //1 saveKeyToFile
		$a_01_2 = {67 65 6e 65 72 61 74 65 4b 65 79 } //1 generateKey
		$a_01_3 = {2e 63 72 79 70 74 } //1 .crypt
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}