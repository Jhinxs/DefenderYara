
rule Ransom_MSIL_Cryptolocker_PDM_MTB{
	meta:
		description = "Ransom:MSIL/Cryptolocker.PDM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_81_0 = {59 6f 75 72 20 70 65 72 73 6f 6e 61 6c 20 66 69 6c 65 73 20 61 72 65 20 65 6e 63 72 79 70 74 65 64 } //1 Your personal files are encrypted
		$a_81_1 = {61 65 73 65 6e 63 72 79 70 74 65 64 } //1 aesencrypted
		$a_81_2 = {53 4e 53 4c 4f 43 4b 45 52 } //1 SNSLOCKER
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1) >=3
 
}
rule Ransom_MSIL_Cryptolocker_PDM_MTB_2{
	meta:
		description = "Ransom:MSIL/Cryptolocker.PDM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {48 45 4c 50 5f 44 45 43 52 59 50 54 5f 59 4f 55 52 5f 46 49 4c 45 53 } //1 HELP_DECRYPT_YOUR_FILES
		$a_81_1 = {2e 65 6e 63 72 79 70 74 65 64 } //1 .encrypted
		$a_81_2 = {65 6e 63 72 79 70 74 46 69 6c 65 } //1 encryptFile
		$a_81_3 = {45 6e 63 72 79 70 74 65 64 4b 65 79 } //1 EncryptedKey
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}
rule Ransom_MSIL_Cryptolocker_PDM_MTB_3{
	meta:
		description = "Ransom:MSIL/Cryptolocker.PDM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {59 6f 75 72 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 } //1 Your files have been encrypted
		$a_81_1 = {52 45 43 4f 56 45 52 5f 5f 46 49 4c 45 53 } //1 RECOVER__FILES
		$a_81_2 = {2e 6c 6f 63 6b 65 64 } //1 .locked
		$a_81_3 = {44 69 73 61 62 6c 65 54 61 73 6b 4d 67 72 } //1 DisableTaskMgr
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}
rule Ransom_MSIL_Cryptolocker_PDM_MTB_4{
	meta:
		description = "Ransom:MSIL/Cryptolocker.PDM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_81_0 = {5f 45 6e 63 72 79 70 74 65 64 24 } //1 _Encrypted$
		$a_81_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_2 = {63 6f 76 69 64 2e 50 72 6f 70 65 72 74 69 65 73 } //1 covid.Properties
		$a_81_3 = {77 6f 72 6d 5f 73 68 69 65 6c 64 } //1 worm_shield
		$a_81_4 = {47 65 74 44 69 72 65 63 74 6f 72 69 65 73 } //1 GetDirectories
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}
rule Ransom_MSIL_Cryptolocker_PDM_MTB_5{
	meta:
		description = "Ransom:MSIL/Cryptolocker.PDM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {45 6e 63 72 79 70 74 65 64 46 69 6c 65 4c 69 73 74 } //1 EncryptedFileList
		$a_81_1 = {45 78 74 65 6e 73 69 6f 6e 73 54 6f 45 6e 63 72 79 70 74 } //1 ExtensionsToEncrypt
		$a_81_2 = {59 6f 75 72 20 50 63 20 68 61 76 65 20 62 65 65 6e 20 66 75 63 6b 65 64 } //1 Your Pc have been fucked
		$a_81_3 = {44 65 63 72 79 70 74 69 6e 67 20 79 6f 75 72 20 66 69 6c 65 73 } //1 Decrypting your files
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}