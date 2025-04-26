
rule Trojan_BAT_AgentTesla_FAS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.FAS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {0c 16 13 04 2b 17 00 08 11 04 07 11 04 9a 1f 10 28 ?? 00 00 0a 9c 00 11 04 17 58 13 04 11 04 07 8e 69 fe 04 13 05 11 05 2d dc } //2
		$a_03_1 = {0a 00 02 28 ?? 00 00 06 28 ?? 00 00 06 72 ?? 02 00 70 72 ?? 02 00 70 6f ?? 00 00 0a 17 8d ?? 00 00 01 25 16 1f 2d 9d 6f ?? 00 00 0a 0b 07 8e 69 8d } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2) >=4
 
}