
rule Trojan_BAT_DCRat_AADN_MTB{
	meta:
		description = "Trojan:BAT/DCRat.AADN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {11 01 02 7b ?? 00 00 04 6f ?? 00 00 0a 38 ?? 00 00 00 11 00 11 01 6f ?? 00 00 0a 16 73 ?? 00 00 0a 13 06 } //2
		$a_03_1 = {11 0a 16 11 08 16 11 08 8e 69 28 ?? 00 00 0a 38 00 00 00 00 11 08 13 09 38 ?? 00 00 00 11 06 11 0a 16 11 0a 8e 69 28 ?? 00 00 06 8d ?? 00 00 01 13 08 38 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2) >=4
 
}