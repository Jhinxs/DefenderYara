
rule Trojan_BAT_AgentTesla_BPQ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.BPQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 05 00 00 "
		
	strings :
		$a_02_0 = {20 00 10 00 00 8d ?? ?? ?? 01 0d 73 ?? ?? ?? 0a 0a 08 09 16 20 00 10 00 00 6f ?? ?? ?? 0a 0b 07 16 fe 02 13 05 11 05 2c 09 06 09 16 07 6f ?? ?? ?? 0a 07 16 fe 02 13 06 11 06 2d d5 06 6f ?? ?? ?? 0a 13 04 de 11 06 2c 06 06 6f ?? ?? ?? 0a dc } //10
		$a_81_1 = {43 6f 6c 6f 72 43 6f 6e 76 65 72 74 65 72 } //1 ColorConverter
		$a_80_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //FromBase64String  1
		$a_80_3 = {47 65 74 44 6f 6d 61 69 6e } //GetDomain  1
		$a_80_4 = {47 65 74 54 79 70 65 } //GetType  1
	condition:
		((#a_02_0  & 1)*10+(#a_81_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1) >=12
 
}