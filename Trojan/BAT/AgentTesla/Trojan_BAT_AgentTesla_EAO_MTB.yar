
rule Trojan_BAT_AgentTesla_EAO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EAO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {20 00 01 00 00 14 14 17 8d 17 00 00 01 25 16 07 6f ?? 00 00 0a a2 28 ?? 00 00 0a 74 20 00 00 01 0c 08 6f ?? 00 00 0a 17 9a 6f ?? 00 00 0a 17 9a 0d 09 16 8c 59 00 00 01 7e ?? 00 00 04 13 04 11 04 6f ?? 00 00 0a 26 02 7b 33 00 00 04 72 43 06 00 70 6f } //3
		$a_01_1 = {45 00 69 00 67 00 68 00 74 00 47 00 61 00 6d 00 65 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //2 EightGame.Properties.Resources
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*2) >=5
 
}