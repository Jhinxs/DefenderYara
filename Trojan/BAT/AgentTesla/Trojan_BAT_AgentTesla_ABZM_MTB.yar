
rule Trojan_BAT_AgentTesla_ABZM_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABZM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {73 2e 00 00 0a 0a 06 28 ?? 00 00 0a 02 6f ?? 00 00 0a 6f ?? 00 00 0a 0b 7e ?? 00 00 04 07 6f ?? 00 00 0a 00 7e ?? 00 00 04 18 6f ?? 00 00 0a 00 28 ?? 00 00 06 0c 2b 00 08 2a } //2
		$a_03_1 = {04 8e 69 6f ?? 00 00 0a 0a 2b 00 06 2a 90 0a 21 00 7e ?? 00 00 04 6f ?? 00 00 0a 7e ?? 00 00 04 16 7e } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2) >=4
 
}