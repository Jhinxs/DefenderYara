
rule Trojan_BAT_AgentTesla_AASE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AASE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {70 0a 06 28 ?? 00 00 0a 74 ?? 00 00 01 0b 07 72 ?? 00 00 70 6f ?? 00 00 0a 00 07 6f ?? 00 00 0a 0c 08 6f ?? 00 00 0a 28 ?? 00 00 0a 73 ?? 00 00 0a 0d 09 6f ?? 00 00 0a 13 04 11 04 28 ?? 00 00 0a 13 05 2b 00 11 05 2a } //4
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}