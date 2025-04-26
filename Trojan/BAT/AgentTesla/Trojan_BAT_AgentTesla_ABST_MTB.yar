
rule Trojan_BAT_AgentTesla_ABST_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABST!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {1b 0b 07 73 ?? 00 00 0a 16 73 ?? 00 00 0a 0c 00 20 00 10 00 00 8d ?? 00 00 01 0d 00 00 73 ?? 00 00 0a 13 04 00 00 08 09 16 20 00 10 00 00 6f ?? 00 00 0a 13 05 11 05 16 fe 02 13 06 11 06 2c 0e 00 11 04 09 16 11 05 6f ?? 00 00 0a 00 00 00 11 05 16 fe 02 13 07 11 07 2d cb } //4
		$a_01_1 = {50 00 42 00 58 00 45 00 6d 00 75 00 6c 00 61 00 74 00 6f 00 72 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 PBXEmulator.Properties.Resources
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}