
rule Trojan_BAT_AgentTesla_PTJD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PTJD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {5a 61 2b 84 28 ?? 00 00 0a 7e 01 00 00 04 02 08 6f 27 00 00 0a 28 ?? 00 00 0a a5 01 00 00 1b } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}