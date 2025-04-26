
rule Ransom_MSIL_Cryptolocker_PDF_MTB{
	meta:
		description = "Ransom:MSIL/Cryptolocker.PDF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_81_0 = {79 6f 75 72 20 66 69 6c 65 73 20 65 6e 63 72 79 70 74 65 64 } //1 your files encrypted
		$a_81_1 = {44 69 73 61 62 6c 65 54 61 73 6b 4d 67 72 } //1 DisableTaskMgr
		$a_81_2 = {41 52 54 45 4d 4f 4e 20 52 41 4e 53 4f 4d 57 41 52 45 } //1 ARTEMON RANSOMWARE
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1) >=3
 
}
rule Ransom_MSIL_Cryptolocker_PDF_MTB_2{
	meta:
		description = "Ransom:MSIL/Cryptolocker.PDF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_81_0 = {64 6f 6e 6f 74 20 63 72 79 } //1 donot cry
		$a_81_1 = {2e 63 72 69 6e 67 } //1 .cring
		$a_81_2 = {45 6e 63 72 79 70 74 46 69 6c 65 } //1 EncryptFile
		$a_81_3 = {43 72 79 46 69 6c 65 } //1 CryFile
		$a_81_4 = {64 65 52 65 61 64 4d 65 21 21 21 2e 74 78 74 } //1 deReadMe!!!.txt
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}
rule Ransom_MSIL_Cryptolocker_PDF_MTB_3{
	meta:
		description = "Ransom:MSIL/Cryptolocker.PDF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {46 75 63 6b 20 52 61 74 73 20 41 6e 74 69 76 69 72 75 73 } //1 Fuck Rats Antivirus
		$a_81_1 = {48 59 44 52 41 20 20 52 61 6e 73 6f 6d 77 61 72 65 } //1 HYDRA  Ransomware
		$a_81_2 = {44 65 63 72 79 70 74 20 59 6f 75 72 20 46 69 6c 65 73 } //1 Decrypt Your Files
		$a_81_3 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //1 CreateEncryptor
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}
rule Ransom_MSIL_Cryptolocker_PDF_MTB_4{
	meta:
		description = "Ransom:MSIL/Cryptolocker.PDF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_81_0 = {68 69 64 64 65 6e 2d 74 65 61 72 } //1 hidden-tear
		$a_81_1 = {41 45 53 5f 45 6e 63 72 79 70 74 } //1 AES_Encrypt
		$a_81_2 = {45 6e 63 72 79 70 74 46 69 6c 65 } //1 EncryptFile
		$a_81_3 = {65 6e 63 72 79 70 74 44 69 72 65 63 74 6f 72 79 } //1 encryptDirectory
		$a_81_4 = {62 79 74 65 73 54 6f 42 65 45 6e 63 72 79 70 74 65 64 } //1 bytesToBeEncrypted
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}
rule Ransom_MSIL_Cryptolocker_PDF_MTB_5{
	meta:
		description = "Ransom:MSIL/Cryptolocker.PDF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_81_0 = {41 6c 6c 20 79 6f 75 72 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 } //1 All your files have been encrypted
		$a_81_1 = {41 45 53 5f 44 65 63 72 79 70 74 } //1 AES_Decrypt
		$a_81_2 = {42 69 67 45 79 65 73 } //1 BigEyes
		$a_81_3 = {44 65 6c 65 74 65 5f 61 6c 6c 5f 66 69 6c 65 } //1 Delete_all_file
		$a_81_4 = {40 70 72 6f 74 6f 6e 6d 61 69 6c 2e 63 6f 6d } //1 @protonmail.com
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}
rule Ransom_MSIL_Cryptolocker_PDF_MTB_6{
	meta:
		description = "Ransom:MSIL/Cryptolocker.PDF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {59 6f 75 72 20 70 65 72 73 6f 6e 61 6c 20 66 69 6c 65 73 20 61 72 65 20 62 65 69 6e 67 20 64 65 6c 65 74 65 64 } //1 Your personal files are being deleted
		$a_81_1 = {45 78 74 65 6e 73 69 6f 6e 73 54 6f 45 6e 63 72 79 70 74 } //1 ExtensionsToEncrypt
		$a_81_2 = {42 69 74 63 6f 69 6e 42 6c 61 63 6b 6d 61 69 6c 65 72 } //1 BitcoinBlackmailer
		$a_81_3 = {45 6e 63 72 79 70 74 65 64 46 69 6c 65 4c 69 73 74 } //1 EncryptedFileList
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}