
rule Trojan_BAT_AgentTesla_FYEA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.FYEA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0c 2b 0d 07 06 08 28 ?? ?? ?? 06 0a 08 15 58 0c 08 16 2f ef } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}