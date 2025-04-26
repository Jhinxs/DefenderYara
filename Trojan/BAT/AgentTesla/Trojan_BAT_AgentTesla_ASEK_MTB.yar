
rule Trojan_BAT_AgentTesla_ASEK_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ASEK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {0a 06 06 6f ?? 03 00 0a 06 6f ?? 03 00 0a 6f ?? 03 00 0a 13 04 73 ?? 03 00 0a 0b 28 ?? 03 00 06 75 ?? 00 00 1b 73 ?? 03 00 0a 0c 08 11 04 16 73 ?? 03 00 0a 0d 09 07 6f ?? 03 00 0a 07 6f ?? 03 00 0a 13 05 de } //3
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=5
 
}