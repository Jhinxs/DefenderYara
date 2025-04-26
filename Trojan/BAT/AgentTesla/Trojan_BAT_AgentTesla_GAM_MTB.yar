
rule Trojan_BAT_AgentTesla_GAM_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.GAM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {0b 07 06 72 ?? 00 00 70 6f ?? 00 00 0a 74 02 00 00 1b 6f ?? 00 00 0a 07 06 72 ?? 00 00 70 6f ?? 00 00 0a 74 02 00 00 1b 6f ?? 00 00 0a 07 06 72 ?? 00 00 70 6f ?? 00 00 0a 74 02 00 00 1b 6f ?? 00 00 0a 02 73 } //3
		$a_01_1 = {4d 00 79 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 4d 00 61 00 6e 00 61 00 67 00 65 00 6d 00 65 00 6e 00 74 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //2 MyMemoryManagement.Properties.Resources
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*2) >=5
 
}