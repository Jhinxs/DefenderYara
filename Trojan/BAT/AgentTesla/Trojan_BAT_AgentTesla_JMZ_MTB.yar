
rule Trojan_BAT_AgentTesla_JMZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JMZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {08 09 9a 13 04 00 06 11 04 1f 10 28 ?? ?? ?? 0a d1 13 05 12 05 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 0a 00 09 17 58 0d 09 08 8e 69 32 d5 } //1
		$a_03_1 = {00 07 06 08 8f ?? ?? ?? 01 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 0b 00 08 17 59 0c 08 15 fe 02 0d 09 2d df } //1
		$a_81_2 = {53 70 6c 69 74 } //1 Split
		$a_81_3 = {54 6f 53 74 72 69 6e 67 } //1 ToString
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}