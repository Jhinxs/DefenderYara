
rule Trojan_BAT_AgentTesla_AAHR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AAHR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {06 06 8e b7 17 da 11 04 da 02 17 8d ?? 00 00 01 13 06 11 06 16 11 04 8c ?? 00 00 01 a2 11 06 14 28 ?? 00 00 0a 28 ?? 00 00 0a 07 08 17 8d ?? 00 00 01 13 08 11 08 16 11 04 8c ?? 00 00 01 08 14 72 01 00 00 70 16 8d ?? 00 00 01 14 14 14 28 ?? 00 00 0a 28 ?? 00 00 0a a2 11 08 14 28 ?? 00 00 0a 28 ?? 00 00 0a 28 ?? 00 00 06 28 ?? 00 00 0a 9c 11 04 17 d6 13 04 11 04 11 07 31 83 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}