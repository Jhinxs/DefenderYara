
rule Trojan_BAT_Formbook_NVD_MTB{
	meta:
		description = "Trojan:BAT/Formbook.NVD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 13 08 11 08 2c 10 00 06 11 07 6f ?? ?? ?? 06 28 ?? ?? ?? 0a 0a 00 11 06 6f ?? ?? ?? 06 72 ?? ?? ?? 70 28 ?? ?? ?? 0a 13 09 11 09 2c 10 00 06 11 07 6f ?? ?? ?? 06 28 ?? ?? ?? 0a 0a 00 11 06 6f ?? ?? ?? 06 72 ?? ?? ?? 70 28 ?? ?? ?? 0a 13 0a 11 0a 2c 10 00 06 11 07 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_Formbook_NVD_MTB_2{
	meta:
		description = "Trojan:BAT/Formbook.NVD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {72 23 00 00 70 28 53 00 00 0a 0b 07 72 27 00 00 70 28 53 00 00 0a 0b 07 72 2b 00 00 70 28 53 00 00 0a 0b 07 72 17 00 00 70 28 53 00 00 0a 0b 07 72 2f 00 00 70 28 53 00 00 0a 0b 07 72 13 00 00 70 28 53 00 00 0a 0b 07 72 0f 00 00 70 28 53 00 00 0a 0b 07 72 33 00 00 70 28 53 00 00 0a 0b 07 72 37 00 00 70 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}