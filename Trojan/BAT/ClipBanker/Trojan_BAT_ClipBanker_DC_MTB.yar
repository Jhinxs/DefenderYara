
rule Trojan_BAT_ClipBanker_DC_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.DC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_81_0 = {4f 49 41 44 4e 41 49 53 33 71 } //1 OIADNAIS3q
		$a_81_1 = {53 79 73 74 65 6d 53 74 72 69 6e 67 } //1 SystemString
		$a_81_2 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //1 get_CurrentDomain
		$a_81_3 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_4 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 ToBase64String
		$a_81_5 = {49 73 4c 6f 67 67 69 6e 67 } //1 IsLogging
		$a_81_6 = {67 65 74 5f 49 73 41 6c 69 76 65 } //1 get_IsAlive
		$a_81_7 = {43 6f 6e 76 65 72 74 } //1 Convert
		$a_81_8 = {47 65 74 54 79 70 65 } //1 GetType
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1) >=9
 
}