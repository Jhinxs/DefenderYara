
rule Trojan_BAT_AgentTesla_MBJZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBJZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {13 0b 02 07 11 04 28 ?? 00 00 06 13 0c 02 17 11 0a 11 0b 11 0c 28 ?? 00 00 06 13 0d 07 11 08 02 11 0d 28 ?? 00 00 06 9c 11 04 17 59 13 04 11 04 16 2f ac } //1
		$a_01_1 = {47 00 35 00 34 00 51 00 37 00 33 00 37 00 48 00 35 00 4b 00 35 00 34 00 34 00 48 00 35 00 55 00 38 00 35 00 35 00 47 00 37 00 37 00 } //1 G54Q737H5K544H5U855G77
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}