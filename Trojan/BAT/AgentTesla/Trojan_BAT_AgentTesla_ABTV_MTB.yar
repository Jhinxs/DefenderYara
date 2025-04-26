
rule Trojan_BAT_AgentTesla_ABTV_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABTV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {06 72 3b 02 00 70 6f ?? 00 00 0a 74 ?? 00 00 1b 0c 08 28 ?? 00 00 0a 00 07 08 6f ?? 00 00 0a 00 07 06 72 49 02 00 70 6f ?? 00 00 0a 74 ?? 00 00 1b 6f ?? 00 00 0a 00 07 06 72 55 02 00 70 6f ?? 00 00 0a 74 ?? 00 00 1b 6f ?? 00 00 0a 00 02 28 ?? 00 00 0a 00 07 6f ?? 00 00 0a 28 ?? 00 00 0a 0d } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}