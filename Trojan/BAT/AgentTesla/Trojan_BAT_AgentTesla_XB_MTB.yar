
rule Trojan_BAT_AgentTesla_XB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.XB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {0a 02 17 8d ?? ?? ?? 01 25 16 1f 2d 9d 6f ?? ?? ?? 0a 0b 00 07 0c 16 0d 2b 1c 08 09 9a 13 04 00 06 11 04 1f 10 28 ?? ?? ?? 0a d1 6f ?? ?? ?? 0a 26 00 09 17 58 0d } //1
		$a_01_1 = {48 65 78 32 53 74 72 69 6e 67 } //1 Hex2String
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 43 68 61 72 41 72 72 61 79 } //1 FromBase64CharArray
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule Trojan_BAT_AgentTesla_XB_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.XB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 05 00 00 "
		
	strings :
		$a_03_0 = {18 0c 12 02 28 ?? ?? ?? 0a 16 28 ?? ?? ?? 0a 16 fe 01 0b 07 2c 0c 72 ?? ?? ?? ?? 28 ?? ?? ?? 0a 00 00 00 02 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 0a 2b 00 06 2a } //10
		$a_80_1 = {45 00 41 00 4c 00 67 00 41 00 7a 00 41 00 43 00 34 00 41 00 4d 00 30 06 75 00 41 00 44 00 41 } //E  1
		$a_80_2 = {42 75 6e 69 31 66 75 5f 54 65 31 78 74 42 31 6f 78 } //Buni1fu_Te1xtB1ox  1
		$a_01_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_80_4 = {49 6e 76 6f 6b 65 } //Invoke  1
	condition:
		((#a_03_0  & 1)*10+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_01_3  & 1)*1+(#a_80_4  & 1)*1) >=14
 
}