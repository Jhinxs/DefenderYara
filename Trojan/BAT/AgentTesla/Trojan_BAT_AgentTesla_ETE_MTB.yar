
rule Trojan_BAT_AgentTesla_ETE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ETE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {34 00 34 00 43 00 5a 00 35 00 37 00 34 00 34 00 46 00 54 00 44 00 47 00 34 00 37 00 37 00 50 00 34 00 42 00 38 00 33 00 35 00 35 00 } //1 44CZ5744FTDG477P4B8355
		$a_03_1 = {5d 91 0a 06 7e ?? ?? ?? 04 03 1f 16 5d 6f ?? ?? ?? 0a 61 0b 2b 00 07 2a } //1
		$a_01_2 = {47 65 74 54 79 70 65 } //1 GetType
		$a_01_3 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_01_4 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
		$a_01_5 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}