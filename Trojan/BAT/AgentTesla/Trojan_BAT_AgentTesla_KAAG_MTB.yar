
rule Trojan_BAT_AgentTesla_KAAG_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.KAAG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {00 07 11 04 11 05 6f ?? 00 00 0a 13 09 07 11 04 11 05 6f ?? 00 00 0a 13 0a 11 0a 28 ?? 00 00 0a 13 0b 09 08 11 0b d2 9c 00 11 05 17 58 13 05 11 05 07 6f ?? 00 00 0a fe 04 13 0c 11 0c 2d c1 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}