
rule Trojan_BAT_AgentTesla_PTKF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PTKF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {7d 02 00 00 04 de 2b 73 5d 00 00 0a 2b dd 28 ?? 00 00 0a 2b dd } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}