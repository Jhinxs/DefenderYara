
rule Trojan_BAT_AgentTesla_BFA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.BFA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_02_0 = {04 02 09 18 28 ?? ?? ?? 06 1f 10 28 ?? ?? ?? 06 84 28 ?? ?? ?? 06 28 ?? ?? ?? 06 26 09 18 25 2c 92 d6 0d 09 08 31 be 7e ?? ?? ?? 04 07 28 ?? ?? ?? 06 0a 2b 00 06 2a 02 } //10
		$a_81_1 = {4b 79 67 6f 2e 64 6c 6c } //1 Kygo.dll
		$a_81_2 = {47 61 72 72 69 78 2e 45 78 70 6c 6f 72 65 72 31 } //1 Garrix.Explorer1
	condition:
		((#a_02_0  & 1)*10+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1) >=12
 
}
rule Trojan_BAT_AgentTesla_BFA_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.BFA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 "
		
	strings :
		$a_02_0 = {02 09 11 05 6f ?? ?? ?? 0a 13 06 11 06 16 16 16 16 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 13 07 11 07 2c 33 00 06 06 6f ?? ?? ?? 0a 19 ?? ?? ?? ?? ?? 25 16 12 06 28 ?? ?? ?? 0a 9c 25 17 12 06 28 ?? ?? ?? 0a 9c 25 18 12 06 28 ?? ?? ?? ?? 9c 6f [0-07] 11 05 17 d6 } //10
		$a_02_1 = {0b 06 07 16 1a 6f ?? ?? ?? 0a 26 07 16 28 ?? ?? ?? 0a 0c 06 16 ?? ?? ?? ?? ?? 0d 00 08 8d ?? ?? ?? 01 13 04 09 11 04 16 08 6f ?? ?? ?? 0a 26 11 04 13 05 de 16 09 2c 07 09 6f ?? ?? ?? 0a [0-02] dc 06 2c 07 06 6f ?? ?? ?? 0a [0-02] dc } //10
		$a_81_2 = {47 65 74 50 69 78 65 6c } //1 GetPixel
		$a_81_3 = {54 6f 49 6e 74 33 32 } //1 ToInt32
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=12
 
}