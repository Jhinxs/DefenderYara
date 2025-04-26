
rule Trojan_BAT_AgentTesla_AQF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AQF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 04 00 00 "
		
	strings :
		$a_03_0 = {16 13 04 07 09 11 04 ?? ?? ?? ?? ?? 13 05 11 05 ?? ?? ?? ?? ?? 13 06 08 06 11 06 b4 9c 11 04 17 d6 13 04 11 04 16 31 db 06 17 d6 0a 09 17 d6 0d 09 } //10
		$a_80_1 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //CreateInstance  2
		$a_80_2 = {47 65 74 54 79 70 65 } //GetType  2
		$a_80_3 = {53 69 6d 70 6c 65 55 49 2e 4d 44 49 } //SimpleUI.MDI  2
	condition:
		((#a_03_0  & 1)*10+(#a_80_1  & 1)*2+(#a_80_2  & 1)*2+(#a_80_3  & 1)*2) >=16
 
}