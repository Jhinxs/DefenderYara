
rule Trojan_BAT_Spynoon_AAPE_MTB{
	meta:
		description = "Trojan:BAT/Spynoon.AAPE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 10 11 0a 5d 13 11 11 10 11 0b 5d 13 12 11 08 11 11 91 13 13 11 09 11 12 28 ?? 00 00 06 13 14 02 11 08 11 10 28 ?? 00 00 06 13 15 02 11 13 11 14 11 15 28 ?? 00 00 06 13 16 11 08 11 11 11 16 20 00 01 00 00 5d d2 9c 11 10 17 59 13 10 11 10 16 2f ad } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}