
rule Trojan_BAT_AgentTesla_DAP_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DAP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {06 02 08 18 28 ?? ?? ?? 06 1f 10 28 ?? ?? ?? 06 84 28 ?? ?? ?? 06 28 ?? ?? ?? 06 26 } //1
		$a_03_1 = {08 11 04 02 11 04 91 07 61 06 09 91 61 28 ?? ?? ?? 06 9c } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule Trojan_BAT_AgentTesla_DAP_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.DAP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {1e 2d 35 2b 1c 06 08 2b 09 06 18 6f ?? 00 00 0a 2b 07 6f ?? 00 00 0a 2b f0 28 ?? 00 00 06 0d 2b 03 26 2b e1 06 6f ?? 00 00 0a 09 16 09 8e 69 6f ?? 00 00 0a 13 04 de 11 0c 2b ca } //4
		$a_01_1 = {47 65 74 42 79 74 65 73 } //1 GetBytes
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}