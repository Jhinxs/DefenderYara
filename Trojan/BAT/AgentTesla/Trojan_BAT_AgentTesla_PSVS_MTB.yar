
rule Trojan_BAT_AgentTesla_PSVS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PSVS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {28 14 00 00 0a 6f ?? 00 00 0a 6f ?? 00 00 0a 28 ?? 00 00 0a 6f ?? 00 00 0a 28 ?? 00 00 0a 6f ?? 00 00 0a 20 02 00 00 00 38 10 fe ff ff } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}