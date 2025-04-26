
rule Trojan_BAT_ClipBanker_AL_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.AL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {04 03 8e 69 14 14 17 28 ?? 00 00 06 d6 13 07 11 07 04 5f 13 08 03 11 06 03 8e 69 14 14 17 28 ?? 00 00 06 91 13 09 08 ?? 0b 00 00 1b 11 06 16 16 02 17 8d ?? 00 00 01 25 16 11 06 8c ?? 00 00 01 a2 14 28 ?? 00 00 0a 28 ?? 00 00 0a 16 16 11 09 8c ?? 00 00 01 11 08 8c ?? 00 00 01 18 28 ?? 00 00 06 8c ?? 00 00 01 18 28 ?? 00 00 06 b4 9c 11 06 17 d6 } //2
		$a_01_1 = {54 6f 49 6e 74 65 67 65 72 } //1 ToInteger
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}