
rule Trojan_BAT_AgentTesla_BRO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.BRO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 05 00 00 "
		
	strings :
		$a_02_0 = {06 0c 06 08 6f ?? ?? ?? 0a 00 06 18 6f ?? ?? ?? 0a 00 02 28 ?? ?? ?? 0a 0d 28 ?? ?? ?? 0a 06 6f ?? ?? ?? 0a 09 16 09 8e 69 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 0b 07 13 04 2b 00 11 04 2a } //10
		$a_81_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_2 = {47 65 74 54 79 70 65 } //1 GetType
		$a_81_3 = {53 6d 61 72 74 45 78 74 65 6e 73 69 6f 6e 73 } //1 SmartExtensions
		$a_81_4 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
	condition:
		((#a_02_0  & 1)*10+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=14
 
}