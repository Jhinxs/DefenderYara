
rule Backdoor_BAT_NanoCoreRAT_E_MTB{
	meta:
		description = "Backdoor:BAT/NanoCoreRAT.E!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 "
		
	strings :
		$a_03_0 = {00 00 01 25 16 1f 40 9d 6f 90 09 04 00 0a 17 8d } //2
		$a_03_1 = {07 06 11 08 9a 1f 10 28 ?? 00 00 0a 6f ?? 00 00 0a 00 11 08 17 58 13 08 11 08 06 8e 69 fe 04 13 09 11 09 } //2
		$a_03_2 = {00 00 01 25 16 1f 25 9d 6f 90 09 04 00 04 17 8d } //2
		$a_01_3 = {54 6f 41 72 72 61 79 } //1 ToArray
		$a_01_4 = {47 65 74 4d 65 74 68 6f 64 73 } //1 GetMethods
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=8
 
}