
rule Trojan_BAT_AgentTesla_ADG_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ADG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 03 00 00 "
		
	strings :
		$a_03_0 = {02 02 8e 69 17 da 91 1f 70 61 0c 02 8e 69 17 d6 17 da 17 d6 8d ?? ?? ?? 01 0d 02 8e 69 17 da 13 04 11 04 13 05 16 13 06 38 ?? ?? ?? ?? 09 11 06 02 11 06 91 08 61 07 11 07 91 61 b4 9c } //10
		$a_80_1 = {47 65 74 4d 65 74 68 6f 64 73 } //GetMethods  2
		$a_80_2 = {49 6e 76 6f 6b 65 } //Invoke  2
	condition:
		((#a_03_0  & 1)*10+(#a_80_1  & 1)*2+(#a_80_2  & 1)*2) >=14
 
}