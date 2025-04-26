
rule Ransom_MSIL_Cryptolocker_EW_MTB{
	meta:
		description = "Ransom:MSIL/Cryptolocker.EW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,4a 00 4a 00 08 00 00 "
		
	strings :
		$a_81_0 = {41 4c 4c 20 59 4f 55 52 20 46 49 4c 45 53 20 48 41 53 20 42 45 45 4e 20 45 4e 43 52 59 50 54 45 44 } //50 ALL YOUR FILES HAS BEEN ENCRYPTED
		$a_81_1 = {41 6c 6c 20 6f 66 20 79 6f 75 72 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 } //50 All of your files have been encrypted
		$a_81_2 = {4e 6f 20 66 69 6c 65 73 20 74 6f 20 65 6e 63 72 79 70 74 } //20 No files to encrypt
		$a_81_3 = {42 69 74 63 6f 69 6e 20 41 64 64 72 65 73 73 } //20 Bitcoin Address
		$a_81_4 = {5f 5f 5f 52 45 43 4f 56 45 52 5f 5f 46 49 4c 45 53 5f 5f } //3 ___RECOVER__FILES__
		$a_81_5 = {76 73 73 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //3 vssadmin delete shadows /all /quiet
		$a_81_6 = {4c 4f 43 4b 20 43 52 59 50 54 4f 52 } //1 LOCK CRYPTOR
		$a_81_7 = {45 6e 63 72 79 70 74 65 64 4b 65 79 } //1 EncryptedKey
	condition:
		((#a_81_0  & 1)*50+(#a_81_1  & 1)*50+(#a_81_2  & 1)*20+(#a_81_3  & 1)*20+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=74
 
}