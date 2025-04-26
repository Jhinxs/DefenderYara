
rule Trojan_BAT_AgentTesla_NYS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NYS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 0d 00 00 "
		
	strings :
		$a_81_0 = {35 5a 54 34 34 38 48 38 55 44 35 4a 4a 47 39 5a 42 47 } //1 5ZT448H8UD5JJG9ZBG
		$a_81_1 = {4c 74 2e 4c 45 } //1 Lt.LE
		$a_81_2 = {4c 69 72 61 } //1 Lira
		$a_81_3 = {47 65 74 4f 62 6a 65 63 74 } //1 GetObject
		$a_81_4 = {44 5a 35 42 } //1 DZ5B
		$a_81_5 = {43 6f 6e 73 74 41 72 72 61 79 } //1 ConstArray
		$a_81_6 = {5a 65 72 6f 4f 72 4d 69 6e 75 73 } //1 ZeroOrMinus
		$a_81_7 = {4d 75 6c 74 69 63 61 73 74 53 75 70 70 6f 72 74 } //1 MulticastSupport
		$a_81_8 = {53 61 66 65 48 61 6e 64 6c 65 } //1 SafeHandle
		$a_81_9 = {43 6f 6d 70 75 74 65 48 61 73 68 } //1 ComputeHash
		$a_81_10 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_81_11 = {47 65 74 42 79 74 65 73 } //1 GetBytes
		$a_81_12 = {4d 44 35 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //1 MD5CryptoServiceProvider
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1) >=13
 
}