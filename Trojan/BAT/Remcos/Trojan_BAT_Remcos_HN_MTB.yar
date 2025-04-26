
rule Trojan_BAT_Remcos_HN_MTB{
	meta:
		description = "Trojan:BAT/Remcos.HN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {07 16 30 1b 07 17 d6 0b 06 72 ?? ?? ?? 70 28 ?? ?? ?? 0a 8c ?? ?? ?? 01 6f ?? ?? ?? 0a 2b e1 } //1
		$a_81_1 = {54 6f 49 6e 74 33 32 } //1 ToInt32
		$a_81_2 = {47 65 74 4f 62 6a 65 63 74 56 61 6c 75 65 } //1 GetObjectValue
		$a_81_3 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //1 GetExecutingAssembly
		$a_81_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
	condition:
		((#a_03_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}