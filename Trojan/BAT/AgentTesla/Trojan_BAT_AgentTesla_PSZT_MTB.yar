
rule Trojan_BAT_AgentTesla_PSZT_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PSZT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {38 bd fe ff ff 1f 64 28 ?? 00 00 06 0c 1f 63 28 ?? 00 00 06 0d 38 a8 fe ff ff d0 0e 01 00 06 26 1f f0 0d 38 9a fe ff ff } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}