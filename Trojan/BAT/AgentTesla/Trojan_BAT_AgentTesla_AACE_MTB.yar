
rule Trojan_BAT_AgentTesla_AACE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AACE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 05 09 08 6f ?? 00 00 0a 13 11 16 13 04 11 06 07 9a 20 44 55 13 ce 28 ?? 00 00 06 28 ?? 00 00 0a 13 0b 11 0b 2c 0b 12 11 28 ?? 00 00 0a 13 04 2b 46 11 06 07 9a 20 4c 55 13 ce 28 ?? 00 00 06 28 ?? 00 00 0a 13 0c 11 0c 2c 0b 12 11 28 ?? 00 00 0a 13 04 2b 22 11 06 07 9a 20 54 55 13 ce 28 ?? 00 00 06 28 ?? 00 00 0a 13 0d 11 0d 2c 09 12 11 28 ?? 00 00 0a 13 04 11 07 11 04 6f ?? 00 00 0a 09 17 58 0d 09 11 08 fe 04 13 0e 11 0e 3a } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}