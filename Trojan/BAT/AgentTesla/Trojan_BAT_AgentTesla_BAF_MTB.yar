
rule Trojan_BAT_AgentTesla_BAF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.BAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {0c 07 16 73 ?? 00 00 0a 73 ?? 00 00 0a 0d 09 08 6f ?? 00 00 0a de 0a 09 2c 06 09 6f ?? 00 00 0a dc 08 6f ?? 00 00 0a 13 04 de 34 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}