
rule Trojan_BAT_AgentTesla_EFW_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EFW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {03 08 03 8e 69 5d 03 08 03 8e 69 5d 91 07 08 07 8e 69 5d 91 61 28 ?? ?? ?? 0a 03 08 17 58 03 8e 69 5d 91 59 20 00 01 00 00 58 20 00 01 00 00 5d d2 9c 08 17 58 0c 08 6a 03 8e 69 17 59 6a 06 17 58 6e 5a } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}