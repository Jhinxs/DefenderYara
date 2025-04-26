
rule Trojan_BAT_AgentTesla_DAU_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DAU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 07 16 07 8e 69 6f ?? 00 00 0a 13 04 11 04 8e 69 1f 10 59 8d ?? 00 00 01 13 05 11 04 1f 10 11 05 16 11 04 8e 69 1f 10 59 28 } //4
		$a_01_1 = {47 65 74 42 79 74 65 73 } //1 GetBytes
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}