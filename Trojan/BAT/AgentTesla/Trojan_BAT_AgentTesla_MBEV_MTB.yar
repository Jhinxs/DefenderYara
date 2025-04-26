
rule Trojan_BAT_AgentTesla_MBEV_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBEV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {11 07 17 58 11 04 5d 13 0a 07 11 08 91 08 11 09 91 61 20 00 01 00 00 13 0b 07 11 0a 91 59 11 0b 58 11 0b 5d 13 0c 07 11 08 11 0c d2 9c 11 07 17 58 13 07 } //1
		$a_01_1 = {54 00 48 00 42 00 35 00 5a 00 38 00 47 00 48 00 43 00 46 00 55 00 34 00 34 00 38 00 34 00 35 00 48 00 57 00 35 00 43 00 59 00 37 00 } //1 THB5Z8GHCFU44845HW5CY7
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}