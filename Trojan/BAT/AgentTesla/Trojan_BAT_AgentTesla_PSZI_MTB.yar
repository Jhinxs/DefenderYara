
rule Trojan_BAT_AgentTesla_PSZI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PSZI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {75 01 00 00 1b 28 ?? 00 00 06 28 ?? 00 00 06 2a 19 8c 08 00 00 01 2a } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}