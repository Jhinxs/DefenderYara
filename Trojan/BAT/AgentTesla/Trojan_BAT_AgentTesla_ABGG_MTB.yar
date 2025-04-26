
rule Trojan_BAT_AgentTesla_ABGG_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABGG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {07 11 06 72 ?? ?? ?? 70 28 ?? ?? ?? 0a 72 ?? ?? ?? 70 20 ?? ?? ?? 00 14 14 18 8d ?? ?? ?? 01 25 16 06 11 06 9a a2 25 17 1f 10 8c ?? ?? ?? 01 a2 6f ?? ?? ?? 0a a5 ?? ?? ?? 01 9c 11 06 17 58 13 06 11 06 06 8e 69 fe 04 13 07 11 07 2d b2 } //3
		$a_01_1 = {43 00 6f 00 6c 00 6f 00 72 00 5f 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 2e 00 56 00 56 00 56 00 43 00 } //1 Color_Memory.VVVC
		$a_01_2 = {43 00 6f 00 6c 00 6f 00 72 00 5f 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 Color_Memory.Properties.Resources
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=5
 
}