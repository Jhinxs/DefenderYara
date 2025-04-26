
rule Trojan_BAT_AgentTesla_FAG_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.FAG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {11 01 11 00 11 04 18 6f ?? 00 00 0a 1f 10 28 ?? 00 00 0a b4 6f ?? 00 00 0a 20 ?? 00 00 00 28 ?? 00 00 06 3a ?? ?? ff ff 26 20 16 00 00 00 38 ?? ?? ff ff 02 6f ?? 00 00 06 28 ?? 01 00 06 02 6f ?? 00 00 06 6f ?? 00 00 0a 38 ?? 13 00 00 02 6f ?? 00 00 06 72 } //3
		$a_01_1 = {53 00 74 00 65 00 6c 00 6c 00 61 00 5f 00 44 00 61 00 75 00 70 00 69 00 6e 00 65 00 5f 00 5f 00 35 00 30 00 5f 00 4e 00 75 00 64 00 65 00 5f 00 50 00 68 00 6f 00 74 00 6f 00 73 00 } //2 Stella_Daupine__50_Nude_Photos
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*2) >=5
 
}