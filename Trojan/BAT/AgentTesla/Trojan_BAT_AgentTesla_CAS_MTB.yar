
rule Trojan_BAT_AgentTesla_CAS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CAS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {08 11 06 07 11 06 9a 1f 10 28 ?? 00 00 0a d2 9c 11 06 17 58 13 06 11 06 07 8e 69 fe 04 13 07 11 07 2d dd } //3
		$a_01_1 = {52 65 70 6c 61 63 65 } //1 Replace
		$a_01_2 = {53 70 6c 69 74 } //1 Split
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=5
 
}