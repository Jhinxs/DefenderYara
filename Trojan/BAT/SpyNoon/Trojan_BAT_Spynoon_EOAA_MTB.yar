
rule Trojan_BAT_Spynoon_EOAA_MTB{
	meta:
		description = "Trojan:BAT/Spynoon.EOAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 09 02 74 ?? 00 00 1b 16 02 14 72 3c 15 00 70 16 8d ?? 00 00 01 14 14 14 28 ?? 00 00 0a 28 ?? 00 00 0a 6f ?? 00 00 0a 00 11 09 6f ?? 00 00 0a 00 11 08 6f ?? 00 00 0a 0d de 0e } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}