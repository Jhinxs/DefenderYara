
rule Trojan_BAT_Spynoon_FAM_MTB{
	meta:
		description = "Trojan:BAT/Spynoon.FAM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {25 2d 17 26 7e ?? 00 00 04 fe ?? ?? 00 00 06 73 ?? 00 00 0a 25 80 ?? 00 00 04 0a 72 ?? 13 00 70 28 ?? 00 00 0a 0b 06 07 6f ?? 00 00 0a 0c 02 8e 69 8d ?? 00 00 01 0d 08 02 16 02 8e 69 09 16 6f ?? 00 00 0a 13 04 09 11 04 28 ?? 00 00 2b 28 ?? 00 00 2b 13 05 2b 00 11 05 2a } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}