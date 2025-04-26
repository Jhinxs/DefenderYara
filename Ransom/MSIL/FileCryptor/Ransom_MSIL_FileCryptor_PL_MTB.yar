
rule Ransom_MSIL_FileCryptor_PL_MTB{
	meta:
		description = "Ransom:MSIL/FileCryptor.PL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {50 6f 76 6c 73 6f 6d 77 61 72 65 } //1 Povlsomware
		$a_01_1 = {57 00 69 00 6e 00 33 00 32 00 5f 00 53 00 68 00 61 00 64 00 6f 00 77 00 43 00 6f 00 70 00 79 00 } //1 Win32_ShadowCopy
		$a_01_2 = {45 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 3a 00 } //1 Encrypted:
		$a_01_3 = {50 00 6f 00 76 00 6c 00 73 00 6f 00 6d 00 77 00 61 00 72 00 65 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 Povlsomware.Properties.Resources
		$a_01_4 = {5c 44 6f 74 66 75 73 63 61 74 65 64 5c 6c 6f 76 65 2e 70 64 62 } //1 \Dotfuscated\love.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}