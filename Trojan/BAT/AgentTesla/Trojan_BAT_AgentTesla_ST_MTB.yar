
rule Trojan_BAT_AgentTesla_ST_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ST!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_01_0 = {00 20 00 01 00 00 13 11 11 10 17 58 13 12 11 10 20 00 9a 01 00 5d 13 13 11 12 20 00 9a 01 00 5d 13 14 11 0b 11 13 91 13 15 1f 16 8d 80 00 00 01 25 d0 27 01 00 04 28 c6 00 00 0a 11 10 1f 16 5d 91 13 16 11 0b 11 14 91 11 11 58 13 17 11 15 11 16 61 13 18 11 18 11 17 59 13 19 11 0b 11 13 11 19 11 11 5d d2 9c 00 11 10 17 58 13 10 11 10 20 00 9a 01 00 fe 04 13 1a 11 1a 2d 84 } //2
	condition:
		((#a_01_0  & 1)*2) >=2
 
}