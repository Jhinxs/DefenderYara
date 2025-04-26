
rule Trojan_BAT_AgentTesla_JAO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JAO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 08 00 00 "
		
	strings :
		$a_02_0 = {0a 0a de 1c 26 03 72 ?? ?? ?? 70 7e ?? ?? ?? 0a 6f ?? ?? ?? 0a 10 01 03 28 ?? ?? ?? 0a 0a de 00 } //10
		$a_02_1 = {0a 26 06 28 ?? ?? ?? 06 28 ?? ?? ?? 06 06 2e 17 72 ?? ?? ?? 70 06 28 ?? ?? ?? 06 06 8c ?? ?? ?? 01 28 ?? ?? ?? 0a 2a 06 17 58 0a 06 1f 64 32 c7 } //10
		$a_81_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_3 = {43 6c 61 73 73 4c 69 62 72 61 72 79 } //1 ClassLibrary
		$a_81_4 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_81_5 = {44 65 63 6f 64 65 } //1 Decode
		$a_81_6 = {45 6e 63 6f 64 65 } //1 Encode
		$a_81_7 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //1 GetExecutingAssembly
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=26
 
}