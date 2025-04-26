
rule Trojan_BAT_AgentTesla_LRH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LRH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {16 13 04 2b 27 00 08 09 11 04 28 ?? ?? ?? 06 13 07 11 07 28 ?? ?? ?? 0a 13 08 17 13 09 00 07 06 11 08 d2 9c 00 00 11 04 17 58 13 04 11 04 17 fe 04 13 0a 11 0a 2d ce } //1
		$a_01_1 = {45 58 30 30 30 30 31 } //1 EX00001
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}