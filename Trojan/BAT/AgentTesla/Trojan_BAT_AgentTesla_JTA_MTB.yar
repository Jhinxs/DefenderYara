
rule Trojan_BAT_AgentTesla_JTA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JTA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {02 06 02 8e 69 6a 5d d4 02 06 02 8e 69 6a 5d d4 91 03 06 03 8e 69 6a 5d d4 91 61 28 ?? ?? ?? 0a 02 06 17 6a 58 02 8e 69 6a 5d d4 91 28 ?? ?? ?? 0a 59 20 ?? ?? ?? 00 58 20 ?? ?? ?? 00 5d 28 ?? ?? ?? 0a 9c 00 06 17 6a 58 0a 06 02 8e 69 17 59 6a 04 17 58 6e 5a fe 02 16 fe 01 0b 07 2d a0 } //1
		$a_81_1 = {49 49 49 49 49 49 34 32 } //1 IIIIII42
		$a_81_2 = {49 49 49 49 49 49 34 33 } //1 IIIIII43
		$a_81_3 = {50 61 72 61 6d 58 41 72 72 61 79 } //1 ParamXArray
	condition:
		((#a_03_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}