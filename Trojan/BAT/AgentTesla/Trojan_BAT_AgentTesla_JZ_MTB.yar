
rule Trojan_BAT_AgentTesla_JZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {a0 00 00 00 9d 28 ?? 00 00 06 16 9a 90 09 0c 00 00 00 2b 17 8d ?? 00 00 01 25 16 20 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}