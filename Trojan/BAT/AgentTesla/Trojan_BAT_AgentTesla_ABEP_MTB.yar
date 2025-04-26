
rule Trojan_BAT_AgentTesla_ABEP_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABEP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {01 25 16 20 ?? ?? ?? 88 28 ?? ?? ?? 06 a2 25 17 20 ?? ?? ?? 88 28 ?? ?? ?? 06 a2 14 14 14 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 28 ?? ?? ?? 06 28 ?? ?? ?? 0a 0b 14 } //2
		$a_01_1 = {45 78 63 65 72 65 73 74 69 6e 74 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 Excerestint.Resources.resources
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}