
rule Trojan_BAT_AgentTesla_ACIX_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ACIX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {8c 6c 00 00 01 0d 09 1f 21 8c 6c 00 00 01 16 28 ?? ?? ?? 0a 09 1f 7e 8c 6c 00 00 01 16 28 } //2
		$a_01_1 = {47 00 61 00 6d 00 65 00 53 00 65 00 6e 00 73 00 65 00 30 00 31 00 } //1 GameSense01
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1) >=3
 
}