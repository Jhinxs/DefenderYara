
rule Trojan_BAT_AgentTesla_AQO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AQO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 "
		
	strings :
		$a_03_0 = {08 09 16 09 8e 69 ?? ?? ?? ?? ?? 13 04 11 04 2c 0a 07 09 16 11 04 ?? ?? ?? ?? ?? 11 04 09 8e 69 2e de } //10
		$a_80_1 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //CreateInstance  1
		$a_80_2 = {43 6f 6d 70 72 65 73 73 69 6f 6e 4d 6f 64 65 } //CompressionMode  1
		$a_80_3 = {47 5a 69 70 53 74 72 65 61 6d } //GZipStream  1
		$a_80_4 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //InvokeMember  1
		$a_80_5 = {4c 6f 21 61 64 } //Lo!ad  1
	condition:
		((#a_03_0  & 1)*10+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1) >=15
 
}