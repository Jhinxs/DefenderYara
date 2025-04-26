
rule Trojan_BAT_AgentTesla_AMAU_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AMAU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 0b 07 18 6f ?? 00 00 0a 00 07 18 6f ?? 00 00 0a 00 07 06 6f ?? 00 00 0a 00 02 07 28 ?? 00 00 06 00 2a } //5
		$a_03_1 = {04 8e 69 0b 02 06 07 28 ?? 00 00 06 28 ?? 00 00 0a 6f ?? 00 00 0a 07 8c ?? 00 00 01 14 6f ?? 00 00 0a 26 } //5
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5) >=10
 
}