
rule Trojan_BAT_AgentTesla_BGO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.BGO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_02_0 = {70 03 11 04 18 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 04 07 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 6a 61 b7 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 13 05 00 1f fb 13 06 2b 7b } //10
		$a_81_1 = {47 65 74 54 79 70 65 } //1 GetType
		$a_81_2 = {47 61 72 72 69 78 2e 45 78 70 6c 6f 72 65 72 31 } //1 Garrix.Explorer1
	condition:
		((#a_02_0  & 1)*10+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1) >=12
 
}