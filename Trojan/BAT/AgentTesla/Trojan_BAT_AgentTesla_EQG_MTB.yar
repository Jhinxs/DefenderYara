
rule Trojan_BAT_AgentTesla_EQG_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EQG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {03 04 20 00 84 00 00 5d 03 04 20 00 84 00 00 5d 91 02 04 1f 16 5d ?? ?? ?? ?? ?? 61 ?? ?? ?? ?? ?? 03 04 17 58 20 00 84 00 00 5d 91 ?? ?? ?? ?? ?? 59 20 00 01 00 00 58 20 00 01 00 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}