
rule Trojan_BAT_Heracles_AAWN_MTB{
	meta:
		description = "Trojan:BAT/Heracles.AAWN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {16 13 0e 06 17 d6 20 00 01 00 00 5d 0a 08 11 08 06 94 d6 20 00 01 00 00 5d 0c 11 08 06 94 13 0e 11 08 06 11 08 08 94 9e 11 08 08 11 0e 9e 11 08 11 08 06 94 11 08 08 94 d6 20 00 01 00 00 5d 94 13 0f 03 07 17 da 17 6f ?? 00 00 0a 6f ?? 00 00 0a 16 93 13 11 11 11 28 ?? 00 00 0a 13 0e 11 0e 11 0f 61 13 10 09 11 10 28 ?? 00 00 0a 6f ?? 00 00 0a 26 12 01 28 ?? 00 00 0a 07 17 da 28 ?? 00 00 0a 26 00 07 03 6f ?? 00 00 0a fe 02 16 fe 01 13 12 11 12 3a } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}