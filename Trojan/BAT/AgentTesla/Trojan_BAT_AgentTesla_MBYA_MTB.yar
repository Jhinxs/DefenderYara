
rule Trojan_BAT_AgentTesla_MBYA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBYA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {5d 91 61 11 [0-10] 5d 91 59 20 00 01 00 00 58 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}