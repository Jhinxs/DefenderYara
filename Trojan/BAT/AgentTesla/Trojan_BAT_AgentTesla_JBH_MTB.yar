
rule Trojan_BAT_AgentTesla_JBH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JBH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_00_0 = {41 00 61 00 65 00 65 00 65 00 65 00 65 00 53 00 2d 00 2d 00 69 00 55 00 73 } //1
		$a_00_1 = {4e 65 77 20 53 45 41 4c 61 6e 64 20 41 70 70 } //1 New SEALand App
		$a_81_2 = {42 6c 6f 63 6b 53 69 7a 65 } //1 BlockSize
		$a_81_3 = {47 65 74 4d 65 6d 62 65 72 } //1 GetMember
		$a_81_4 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //1 InvokeMember
		$a_81_5 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //1 RijndaelManaged
		$a_81_6 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_81_7 = {61 64 64 5f 41 73 73 65 6d 62 6c 79 52 65 73 6f 6c 76 65 } //1 add_AssemblyResolve
		$a_81_8 = {43 72 79 70 74 6f 53 74 72 65 61 6d 4d 6f 64 65 } //1 CryptoStreamMode
		$a_81_9 = {54 72 69 6d 53 74 61 72 74 } //1 TrimStart
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1) >=10
 
}