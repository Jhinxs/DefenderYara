
rule Trojan_BAT_Bladabindi_NE_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.NE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_03_0 = {11 0c 25 17 58 13 0c 93 11 ?? 61 60 13 07 11 16 } //5
		$a_03_1 = {11 0c 25 17 58 13 0c 93 11 ?? 61 60 13 07 11 17 } //5
		$a_03_2 = {11 0c 25 17 58 13 0c 93 11 ?? 61 60 13 07 11 1a } //5
		$a_03_3 = {11 0c 25 17 58 13 0c 93 11 ?? 61 60 13 07 11 1d } //5
		$a_03_4 = {11 0c 25 17 58 13 0c 93 11 ?? 61 60 13 07 11 22 } //5
		$a_03_5 = {11 0c 25 17 58 13 0c 93 11 ?? 61 60 13 07 11 30 } //5
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_03_2  & 1)*5+(#a_03_3  & 1)*5+(#a_03_4  & 1)*5+(#a_03_5  & 1)*5) >=5
 
}
rule Trojan_BAT_Bladabindi_NE_MTB_2{
	meta:
		description = "Trojan:BAT/Bladabindi.NE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 "
		
	strings :
		$a_03_0 = {02 03 02 4b 03 04 61 05 61 58 0e 07 0e 04 e0 95 58 7e ?? 00 00 04 0e 06 17 59 e0 95 58 0e 05 28 7b 02 00 06 58 54 } //10
		$a_81_1 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_81_2 = {52 65 67 69 73 74 72 79 4b 65 79 50 65 72 6d 69 73 73 69 6f 6e 43 68 65 63 6b } //1 RegistryKeyPermissionCheck
		$a_81_3 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //1 CreateEncryptor
		$a_81_4 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 ReadProcessMemory
		$a_81_5 = {53 79 73 74 65 6d 2e 53 65 63 75 72 69 74 79 2e 43 72 79 70 74 6f 67 72 61 70 68 79 } //1 System.Security.Cryptography
	condition:
		((#a_03_0  & 1)*10+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=15
 
}