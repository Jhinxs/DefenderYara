
rule Trojan_BAT_AgentTesla_ASBF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ASBF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {0d 16 13 0a 2b 22 00 08 11 0a 18 6f ?? 00 00 0a 13 0b 09 11 0a 18 5b 11 0b 1f 10 28 ?? 00 00 0a 9c 00 11 0a 18 58 13 0a 11 0a 08 6f ?? 00 00 0a fe 04 13 0c 11 0c 2d ce } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}