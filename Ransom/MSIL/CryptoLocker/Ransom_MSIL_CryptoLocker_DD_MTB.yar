
rule Ransom_MSIL_CryptoLocker_DD_MTB{
	meta:
		description = "Ransom:MSIL/CryptoLocker.DD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_81_0 = {44 69 73 61 62 6c 65 54 61 73 6b 4d 67 72 } //1 DisableTaskMgr
		$a_81_1 = {52 61 6e 73 6f 6d } //1 Ransom
		$a_81_2 = {41 45 53 5f 45 6e 63 72 79 70 74 } //1 AES_Encrypt
		$a_81_3 = {45 6e 63 72 79 70 74 69 6f 6e 46 69 6c 65 } //1 EncryptionFile
		$a_81_4 = {44 45 43 52 59 50 54 20 46 49 4c 45 53 } //1 DECRYPT FILES
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=4
 
}
rule Ransom_MSIL_CryptoLocker_DD_MTB_2{
	meta:
		description = "Ransom:MSIL/CryptoLocker.DD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 "
		
	strings :
		$a_81_0 = {41 6c 6c 20 79 6f 75 72 20 69 6d 70 6f 72 74 61 6e 74 20 66 69 6c 65 73 20 61 72 65 20 65 6e 63 72 79 70 74 65 64 } //2 All your important files are encrypted
		$a_81_1 = {44 65 73 6b 74 6f 70 5c 72 65 61 64 6d 65 2e 74 78 74 } //2 Desktop\readme.txt
		$a_81_2 = {42 61 62 61 59 61 67 61 } //2 BabaYaga
		$a_81_3 = {2e 6c 6f 63 6b 65 64 } //1 .locked
		$a_81_4 = {44 69 73 61 62 6c 65 54 61 73 6b 4d 67 72 } //1 DisableTaskMgr
	condition:
		((#a_81_0  & 1)*2+(#a_81_1  & 1)*2+(#a_81_2  & 1)*2+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=7
 
}