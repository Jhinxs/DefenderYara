
rule Trojan_BAT_AgentTesla_NTE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NTE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {57 d4 02 e8 c9 0e 00 00 00 fa 25 33 00 16 00 00 02 00 00 00 26 00 00 00 16 00 00 00 57 00 00 00 70 00 00 00 3c 00 00 00 06 00 00 00 01 00 00 00 03 00 00 00 15 00 00 00 02 00 00 00 02 } //1
		$a_01_1 = {53 79 73 74 65 6d 2e 54 65 78 74 } //1 System.Text
		$a_01_2 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_01_3 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //1 GetExecutingAssembly
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule Trojan_BAT_AgentTesla_NTE_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.NTE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {28 0f 00 00 0a 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 0a 06 19 17 73 ?? ?? ?? 0a 0b 07 6f ?? ?? ?? 0a d4 8d ?? ?? ?? 01 0c 07 08 16 08 8e 69 6f ?? ?? ?? 0a 26 07 6f ?? ?? ?? 0a 00 00 72 ?? ?? ?? 70 72 ?? ?? ?? 70 17 28 ?? ?? ?? 0a 13 04 16 13 05 2b 34 11 04 11 05 9a 0d 00 00 09 19 18 73 ?? ?? ?? 0a 0b 07 08 16 08 8e 69 6f ?? ?? ?? 0a } //5
		$a_01_1 = {52 6f 7a 62 65 68 52 76 } //1 RozbehRv
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}