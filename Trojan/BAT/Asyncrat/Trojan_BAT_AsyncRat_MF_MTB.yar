
rule Trojan_BAT_AsyncRat_MF_MTB{
	meta:
		description = "Trojan:BAT/AsyncRat.MF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_81_0 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_81_1 = {53 6c 79 79 6a 75 6e 70 65 64 6d 66 66 72 75 65 61 62 72 6e 77 62 7a 6d } //1 Slyyjunpedmffrueabrnwbzm
		$a_81_2 = {53 79 6d 6d 65 74 72 69 63 41 6c 67 6f 72 69 74 68 6d } //1 SymmetricAlgorithm
		$a_81_3 = {43 72 79 70 74 6f 67 72 61 70 68 79 } //1 Cryptography
		$a_81_4 = {43 69 70 68 65 72 4d 6f 64 65 } //1 CipherMode
		$a_81_5 = {54 72 69 70 6c 65 44 45 53 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //1 TripleDESCryptoServiceProvider
		$a_81_6 = {73 65 74 5f 4b 65 79 } //1 set_Key
		$a_81_7 = {47 65 74 42 79 74 65 73 } //1 GetBytes
		$a_81_8 = {53 6c 65 65 70 } //1 Sleep
		$a_81_9 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1) >=10
 
}