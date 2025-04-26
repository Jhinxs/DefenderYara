
rule Ransom_MSIL_Filecoder_EJ_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.EJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_81_0 = {44 49 53 4b 5f 45 4e 43 4f 44 45 52 2e 65 78 65 } //1 DISK_ENCODER.exe
		$a_81_1 = {44 49 53 4b 5f 45 4e 43 4f 44 45 52 2e 70 64 62 } //1 DISK_ENCODER.pdb
		$a_81_2 = {45 4e 43 52 59 50 54 45 44 } //1 ENCRYPTED
		$a_81_3 = {45 4e 43 52 59 50 54 45 44 44 } //1 ENCRYPTEDD
		$a_81_4 = {47 45 54 5f 43 49 50 48 45 52 5f 4b 45 59 } //1 GET_CIPHER_KEY
		$a_81_5 = {2e 66 6d 66 67 6d 66 67 6d } //1 .fmfgmfgm
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=5
 
}