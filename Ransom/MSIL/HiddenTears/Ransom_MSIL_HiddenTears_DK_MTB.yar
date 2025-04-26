
rule Ransom_MSIL_HiddenTears_DK_MTB{
	meta:
		description = "Ransom:MSIL/HiddenTears.DK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_81_0 = {52 61 6d 6f 6e 4a 75 61 6e } //1 RamonJuan
		$a_81_1 = {62 79 74 65 73 54 6f 42 65 45 6e 63 72 79 70 74 65 64 } //1 bytesToBeEncrypted
		$a_81_2 = {45 6e 63 72 79 70 74 44 69 72 65 63 74 6f 72 79 } //1 EncryptDirectory
		$a_81_3 = {45 6e 63 72 79 70 74 46 69 6c 65 } //1 EncryptFile
		$a_81_4 = {2e 6c 6f 63 6b 65 64 } //1 .locked
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}