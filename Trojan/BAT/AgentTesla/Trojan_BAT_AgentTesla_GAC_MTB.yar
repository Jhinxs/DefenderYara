
rule Trojan_BAT_AgentTesla_GAC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.GAC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 0c 11 07 58 11 09 59 93 61 11 0b 75 ?? 00 00 1b 11 09 11 0c 58 1f 11 58 11 08 5d 93 61 d1 6f ?? 00 00 0a 26 19 13 0e 38 ?? fe ff ff 11 09 17 58 13 09 1f 09 13 0e 38 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}