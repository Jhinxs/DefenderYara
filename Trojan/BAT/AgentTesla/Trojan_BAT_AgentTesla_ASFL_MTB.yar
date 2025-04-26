
rule Trojan_BAT_AgentTesla_ASFL_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ASFL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 0c 08 18 8c ?? 00 00 01 28 ?? 00 00 0a a5 ?? 01 00 01 6f ?? 00 00 0a 00 08 18 8c ?? 00 00 01 28 ?? 00 00 0a a5 ?? 01 00 01 6f ?? 00 00 0a 00 08 72 ?? 0c 00 70 28 ?? 00 00 0a 6f ?? 00 00 0a 00 08 6f ?? 00 00 0a 0d 09 07 16 07 8e 69 6f ?? 00 00 0a 13 04 02 7b ?? 00 00 04 6f ?? 00 00 0a 00 02 28 ?? 00 00 0a 00 02 7b } //1
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}