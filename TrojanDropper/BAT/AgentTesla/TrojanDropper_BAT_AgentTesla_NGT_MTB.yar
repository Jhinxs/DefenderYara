
rule TrojanDropper_BAT_AgentTesla_NGT_MTB{
	meta:
		description = "TrojanDropper:BAT/AgentTesla.NGT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_03_0 = {09 72 d7 00 00 70 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 13 0d 11 0d 2c 24 09 72 ?? ?? ?? 70 28 ?? ?? ?? 0a 73 ?? ?? ?? 0a 13 0e 11 0e 17 6f ?? ?? ?? 0a } //5
		$a_01_1 = {57 69 6e 64 6f 77 73 41 70 70 31 2e 52 65 73 6f 75 72 63 65 73 } //1 WindowsApp1.Resources
		$a_01_2 = {43 79 70 68 65 72 54 65 61 6d } //1 CypherTeam
		$a_01_3 = {24 36 36 36 62 31 65 63 65 2d 37 61 39 65 2d 34 62 36 33 2d 61 33 61 31 2d 36 37 64 39 34 34 36 66 35 62 30 30 } //1 $666b1ece-7a9e-4b63-a3a1-67d9446f5b00
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=8
 
}