
rule Trojan_BAT_SpyNoon_KEBBA_MTB{
	meta:
		description = "Trojan:BAT/SpyNoon.KEBBA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {72 e7 05 00 70 72 ec b5 00 70 72 f2 b5 00 70 28 ?? ?? ?? 0a 0b 07 28 ?? ?? ?? 06 0c 72 f8 b5 00 70 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 14 72 16 b6 00 70 28 ?? ?? ?? 0a 1b 8d 19 00 00 01 25 16 72 30 b6 00 70 28 ?? ?? ?? 0a a2 25 17 20 00 01 00 00 8c 77 00 00 01 a2 25 1a 17 8d 19 00 00 01 25 16 08 a2 a2 14 14 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 0d 09 74 06 00 00 1b 17 28 ?? ?? ?? 06 13 04 11 04 28 ?? ?? ?? 06 26 07 0a 2b 00 06 2a } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}