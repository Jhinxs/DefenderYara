
rule Trojan_BAT_AgentTesla_ABZJ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABZJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 "
		
	strings :
		$a_03_0 = {72 0d 00 00 70 28 ?? 00 00 06 6f ?? 00 00 0a 28 ?? 00 00 0a 1d 2d 03 26 de 06 0a 2b fb 26 de 00 06 2c d7 } //4
	condition:
		((#a_03_0  & 1)*4) >=4
 
}