
rule Trojan_BAT_AgentTesla_AMBR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AMBR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {11 08 11 04 5d 13 09 11 08 17 58 11 04 5d 13 0a 07 11 09 91 13 0b 07 11 09 11 0b 08 11 08 1f 16 5d 91 61 07 11 0a 91 59 20 00 01 00 00 58 20 00 01 00 00 5d d2 9c 00 11 08 17 58 13 08 11 08 11 04 09 17 58 5a fe 04 13 0c 11 0c 2d b2 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}