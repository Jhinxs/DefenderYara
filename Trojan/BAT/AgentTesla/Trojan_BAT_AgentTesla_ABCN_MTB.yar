
rule Trojan_BAT_AgentTesla_ABCN_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABCN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_03_0 = {02 07 02 8e 69 5d 91 06 07 06 8e 69 5d 91 61 28 ?? ?? ?? 0a 6e 02 07 17 58 02 8e 69 5d 91 28 ?? ?? ?? 0a 6a 59 20 ?? ?? ?? 00 6a 58 20 ?? ?? ?? 00 6a 5d d2 9c 07 15 58 0b } //5
		$a_01_1 = {53 69 6d 46 61 72 6d 2e 45 63 6f 46 61 72 6d 2e 72 65 73 6f 75 72 63 65 73 } //1 SimFarm.EcoFarm.resources
		$a_01_2 = {45 00 6c 00 65 00 63 00 74 00 72 00 6f 00 } //1 Electro
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=7
 
}