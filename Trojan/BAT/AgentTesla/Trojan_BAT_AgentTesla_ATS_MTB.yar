
rule Trojan_BAT_AgentTesla_ATS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ATS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {72 52 a8 00 70 17 8d 17 00 00 01 25 16 07 a2 25 0c 14 14 17 8d 88 00 00 01 25 16 17 9c 25 0d 28 ?? ?? ?? 0a 09 16 91 2d 02 2b 09 08 16 9a 28 ?? ?? ?? 0a 0b 28 ?? ?? ?? 0a 28 ?? ?? ?? 06 26 07 28 ?? ?? ?? 0a } //1
		$a_01_1 = {54 00 6f 00 43 00 68 00 61 00 72 00 41 00 72 00 72 00 61 00 79 00 } //1 ToCharArray
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 43 68 61 72 41 72 72 61 79 } //1 FromBase64CharArray
		$a_01_3 = {54 6f 53 74 72 69 6e 67 } //1 ToString
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}