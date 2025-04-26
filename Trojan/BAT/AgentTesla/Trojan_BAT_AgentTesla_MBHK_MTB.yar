
rule Trojan_BAT_AgentTesla_MBHK_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBHK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {08 14 72 4a 07 00 70 18 8d ?? 00 00 01 25 16 72 62 07 00 70 a2 25 17 72 66 07 00 70 a2 14 14 14 } //1
		$a_03_1 = {11 06 11 1f 11 05 11 1f 9a 1f 10 28 ?? 00 00 0a 86 6f ?? 00 00 0a 00 11 1f 17 d6 13 1f 11 1f 11 1e 31 dd } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}