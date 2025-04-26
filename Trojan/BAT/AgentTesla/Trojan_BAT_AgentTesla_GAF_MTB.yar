
rule Trojan_BAT_AgentTesla_GAF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.GAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 02 72 01 00 00 70 28 ?? 00 00 06 6f ?? 00 00 0a 0a dd 06 00 00 00 26 dd 00 00 00 00 06 2c db } //3
		$a_01_1 = {31 00 38 00 35 00 2e 00 32 00 35 00 34 00 2e 00 33 00 37 00 2e 00 31 00 30 00 38 00 } //2 185.254.37.108
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*2) >=5
 
}