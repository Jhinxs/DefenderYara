
rule Trojan_BAT_AgentTesla_DO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {06 61 20 93 01 00 01 5a 0a 07 17 58 0b 07 02 6f ?? ?? ?? 0a 2f 02 90 09 07 00 02 07 6f ?? ?? ?? 0a } //1
		$a_03_1 = {02 02 28 25 01 00 06 20 ?? ?? ?? ?? 28 74 00 00 06 20 ?? ?? ?? ?? 28 74 00 00 06 6f ?? ?? ?? 0a 20 63 06 00 00 1f 33 6f ?? ?? ?? 0a 28 35 00 00 06 7d 09 00 00 04 02 18 17 16 02 7b 09 00 00 04 90 09 06 00 02 28 ?? ?? ?? 0a } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}