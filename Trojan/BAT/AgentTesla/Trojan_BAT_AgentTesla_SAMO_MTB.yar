
rule Trojan_BAT_AgentTesla_SAMO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.SAMO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {17 8d 4e 00 00 01 25 16 1f 60 9d 28 ?? ?? ?? 0a 20 00 01 00 00 14 14 17 8d 12 00 00 01 25 16 02 a2 28 ?? ?? ?? 0a 74 33 00 00 01 0a 2b 00 06 2a } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}