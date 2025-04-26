
rule Ransom_Linux_Echoraix_SB_xp{
	meta:
		description = "Ransom:Linux/Echoraix.SB!xp,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {6d 61 69 6e 2e 45 6e 63 46 69 6c 65 } //1 main.EncFile
		$a_01_1 = {6d 61 69 6e 2e 72 61 6e 64 53 65 71 } //1 main.randSeq
		$a_01_2 = {6d 61 69 6e 2e 63 68 44 69 72 } //1 main.chDir
		$a_01_3 = {6d 61 69 6e 2e 77 72 69 74 65 6d 65 73 73 61 67 65 } //1 main.writemessage
		$a_01_4 = {6d 61 69 6e 2e 6d 61 6b 65 73 65 63 72 65 74 } //1 main.makesecret
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}