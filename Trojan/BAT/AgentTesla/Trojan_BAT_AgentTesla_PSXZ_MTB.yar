
rule Trojan_BAT_AgentTesla_PSXZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PSXZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 0c 20 fd 4d a8 22 28 ?? 00 00 06 28 ?? 00 00 06 20 da 4d a8 22 28 ?? 00 00 06 28 ?? 00 00 06 28 ?? 00 00 06 13 08 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}