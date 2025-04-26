
rule Trojan_BAT_Heracles_AAUL_MTB{
	meta:
		description = "Trojan:BAT/Heracles.AAUL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 13 05 11 05 08 6f ?? 00 00 0a 11 05 04 6f ?? 00 00 0a 11 05 05 6f ?? 00 00 0a 11 05 6f ?? 00 00 0a 0a 06 02 16 02 8e b7 6f ?? 00 00 0a 13 04 } //4
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}