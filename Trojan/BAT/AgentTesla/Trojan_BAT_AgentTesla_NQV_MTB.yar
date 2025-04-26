
rule Trojan_BAT_AgentTesla_NQV_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NQV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {5d 07 09 20 00 32 00 00 5d 91 08 09 1f 16 5d 6f ?? ?? ?? 0a 61 07 09 17 58 20 00 32 00 00 5d 91 59 20 00 01 00 00 58 20 00 01 00 00 5d d2 9c 00 09 15 58 } //1
		$a_81_1 = {57 41 53 57 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 } //1 WASWDDDDDDDDDDDDDDDDDDDDDDDDDDDD
	condition:
		((#a_03_0  & 1)*1+(#a_81_1  & 1)*1) >=2
 
}