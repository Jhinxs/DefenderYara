
rule Trojan_BAT_AgentTesla_JV_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_03_0 = {11 01 11 03 1f 10 28 ?? 01 00 0a b4 6f } //2
		$a_03_1 = {70 15 16 28 ?? 01 00 0a 13 04 } //2
		$a_01_2 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 } //2 Invoke
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_01_2  & 1)*2) >=6
 
}