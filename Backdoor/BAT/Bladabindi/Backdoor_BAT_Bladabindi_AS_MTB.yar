
rule Backdoor_BAT_Bladabindi_AS_MTB{
	meta:
		description = "Backdoor:BAT/Bladabindi.AS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 07 00 00 "
		
	strings :
		$a_03_0 = {08 07 6f 64 ?? ?? 0a 8e b7 6f 65 ?? ?? 0a 6f 66 ?? ?? 0a 07 08 07 6f 67 ?? ?? 0a 8e b7 6f 65 ?? ?? 0a 6f 68 ?? ?? 0a 73 5a ?? ?? 0a 13 06 11 06 07 6f 69 ?? ?? 0a 17 73 6a ?? ?? 0a 90 0a 4a 00 72 48 ?? ?? 70 11 05 73 63 ?? ?? 0a 0c 07 } //3
		$a_03_1 = {06 16 28 5b ?? ?? 0a 13 04 08 06 1a 06 8e b7 1a 59 6f 5c ?? ?? 0a 11 04 17 59 17 58 8d 3d ?? ?? 01 0d 08 16 6a } //3
		$a_01_2 = {53 74 72 52 65 76 65 72 73 65 } //1 StrReverse
		$a_01_3 = {47 5a 69 70 53 74 72 65 61 6d } //1 GZipStream
		$a_01_4 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_5 = {54 6f 41 72 72 61 79 } //1 ToArray
		$a_01_6 = {67 65 74 5f 41 73 73 65 6d 62 6c 79 } //1 get_Assembly
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*3+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=11
 
}