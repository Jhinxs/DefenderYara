
rule Trojan_BAT_AgentTesla_PSSG_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PSSG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {00 00 0a 02 72 0d 00 00 70 28 09 00 00 06 6f ?? 00 00 0a 28 ?? 00 00 0a 28 ?? 00 00 06 0a dd 06 00 00 00 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}