
rule Trojan_BAT_AgentTesla_PTKH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PTKH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {03 02 fe 06 3c 00 00 06 73 3e 00 00 0a 28 ?? 00 00 2b 28 ?? 00 00 2b 73 41 00 00 0a 2a } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}