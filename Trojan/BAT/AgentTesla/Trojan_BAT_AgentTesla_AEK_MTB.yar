
rule Trojan_BAT_AgentTesla_AEK_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AEK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_01_0 = {2b 2c 72 01 00 00 70 2b 28 2b 2d 0d 16 2d 0e 09 08 6f 12 00 00 0a 08 6f 13 00 00 0a 0a de 0a } //2
	condition:
		((#a_01_0  & 1)*2) >=2
 
}
rule Trojan_BAT_AgentTesla_AEK_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.AEK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_01_0 = {07 8e 69 13 05 08 1f 16 5d 13 06 09 11 04 28 ab 00 00 06 11 06 91 13 07 08 17 58 11 05 5d 13 08 07 08 91 11 07 61 07 11 08 91 59 20 00 01 00 00 58 13 09 07 08 11 09 20 ff 00 00 00 5f d2 9c 08 17 58 0c 08 07 8e 69 32 b7 } //2
	condition:
		((#a_01_0  & 1)*2) >=2
 
}