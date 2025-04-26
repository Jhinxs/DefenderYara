
rule Trojan_BAT_Agentesla_ADA_MTB{
	meta:
		description = "Trojan:BAT/Agentesla.ADA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {28 30 00 00 06 80 19 00 00 04 28 ?? 00 00 0a 6f ?? 00 00 0a 80 18 00 00 04 28 ?? ?? 00 06 28 ?? 00 00 0a 28 ?? ?? 00 06 28 ?? 00 00 0a } //1
		$a_03_1 = {80 14 00 00 04 28 ?? 00 00 0a 28 ?? ?? 00 06 28 ?? 00 00 0a 28 ?? 00 00 0a } //1
		$a_03_2 = {0b 07 28 22 02 00 06 6f ?? 00 00 0a 2c 11 07 28 22 02 00 06 28 fa 01 00 06 6f ?? 00 00 0a 0b de 12 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}