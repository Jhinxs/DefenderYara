
rule Trojan_BAT_AgentTesla_NJZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NJZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {08 09 11 04 28 ?? ?? ?? 06 28 ?? 00 00 06 00 28 ?? 00 00 06 28 ?? 00 00 06 28 ?? 00 00 06 00 07 28 ?? 00 00 06 d2 6f ?? 00 00 0a 00 00 11 04 17 58 13 04 11 04 17 fe 04 13 05 11 05 2d c1 } //1
		$a_01_1 = {53 44 44 53 44 44 53 44 55 4a 48 44 47 55 48 49 4a 53 47 44 } //1 SDDSDDSDUJHDGUHIJSGD
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}