
rule TrojanDownloader_BAT_AgentTesla_AP_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.AP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 05 00 00 "
		
	strings :
		$a_03_0 = {07 72 89 00 ?? 70 6f 16 ?? ?? 0a 20 01 ?? ?? 00 38 b8 ?? ?? ff 00 72 2a ?? ?? 70 0a 20 03 ?? ?? 00 38 a7 ?? ?? ff 38 00 ?? ?? 00 11 05 2a } //6
		$a_03_1 = {11 05 28 0f ?? ?? 0a 13 06 72 01 ?? ?? 70 13 07 20 06 ?? ?? 00 38 05 ?? ?? 00 00 07 6f 10 ?? ?? 0a 0c 20 03 ?? ?? 00 38 f3 ?? ?? 00 08 6f 11 ?? ?? 0a 28 12 ?? ?? 0a 73 13 ?? ?? 0a 0d 20 08 ?? ?? 00 38 d8 ?? ?? 00 00 72 35 ?? ?? 70 0a 20 09 ?? ?? 00 38 c7 ?? 00 00 } //6
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_3 = {47 65 74 52 65 73 70 6f 6e 73 65 53 74 72 65 61 6d } //1 GetResponseStream
		$a_01_4 = {67 65 74 5f 41 73 73 65 6d 62 6c 79 } //1 get_Assembly
	condition:
		((#a_03_0  & 1)*6+(#a_03_1  & 1)*6+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=15
 
}