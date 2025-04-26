
rule Trojan_BAT_AgentTesla_MBCR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBCR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {72 cb 02 00 70 20 00 01 00 00 14 14 17 8d ?? 00 00 01 25 16 11 05 6f ?? 00 00 0a a2 6f ?? 00 00 0a 74 ?? 00 00 01 13 07 11 07 6f ?? 00 00 0a 16 9a 7e ?? 00 00 04 13 09 11 09 } //1
		$a_01_1 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 52 00 65 00 66 00 6c 00 65 00 63 00 74 00 69 00 6f 00 6e 00 2e 00 41 00 73 00 73 00 65 00 6d 00 62 00 6c 00 79 00 00 09 4c 00 6f 00 61 00 64 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}