
rule Backdoor_BAT_SpyGate_AAHU_MTB{
	meta:
		description = "Backdoor:BAT/SpyGate.AAHU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {72 01 00 00 70 0b 07 72 46 0d 01 70 72 4a 0d 01 70 6f ?? 00 00 0a 0c 08 28 ?? 00 00 0a 13 04 11 04 28 ?? 00 00 0a 0d 09 28 ?? 00 00 0a 0a 06 14 } //4
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}