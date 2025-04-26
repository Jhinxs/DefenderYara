
rule Trojan_BAT_AgentTesla_AJY_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AJY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 04 00 00 "
		
	strings :
		$a_03_0 = {25 16 11 04 11 0c 18 5a 18 6f ?? ?? ?? 0a a2 25 17 1f 10 8c ?? ?? ?? 01 a2 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 26 00 11 0c 17 58 13 0c 11 0c 11 05 fe 04 13 0d 11 0d 2d aa 11 06 72 ?? ?? ?? 70 28 } //10
		$a_80_1 = {47 65 74 54 79 70 65 } //GetType  2
		$a_80_2 = {47 65 74 4d 65 74 68 6f 64 } //GetMethod  2
		$a_80_3 = {52 65 76 65 72 73 65 } //Reverse  2
	condition:
		((#a_03_0  & 1)*10+(#a_80_1  & 1)*2+(#a_80_2  & 1)*2+(#a_80_3  & 1)*2) >=16
 
}