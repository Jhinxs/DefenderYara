
rule Trojan_BAT_AgentTesla_ASEL_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ASEL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 07 06 8e 69 5d 13 11 11 07 11 10 6f ?? 00 00 0a 5d 13 13 06 11 11 91 13 14 11 10 11 13 6f ?? 00 00 0a 13 15 02 06 11 07 28 ?? 00 00 06 13 16 02 11 14 11 15 11 16 28 ?? 00 00 06 13 17 06 11 11 02 11 17 28 ?? 00 00 06 9c 11 07 17 59 13 07 11 07 16 fe 04 16 fe 01 13 18 11 18 2d } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}