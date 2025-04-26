
rule Trojan_BAT_AgentTesla_ABVV_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABVV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {11 02 11 01 11 07 9a 1f 10 28 ?? 00 00 0a 6f ?? 00 00 0a 38 ?? ?? 00 00 00 02 } //3
		$a_01_1 = {4b 00 6f 00 6e 00 61 00 53 00 57 00 44 00 43 00 61 00 72 00 6d 00 } //1 KonaSWDCarm
		$a_01_2 = {44 00 65 00 6c 00 65 00 74 00 65 00 4d 00 43 00 } //1 DeleteMC
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=5
 
}