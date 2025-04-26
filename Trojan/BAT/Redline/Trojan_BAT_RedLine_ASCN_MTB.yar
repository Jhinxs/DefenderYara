
rule Trojan_BAT_RedLine_ASCN_MTB{
	meta:
		description = "Trojan:BAT/RedLine.ASCN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 0b 07 06 16 73 ?? 00 00 0a 0c 02 8e 69 8d ?? 00 00 01 0d 08 09 16 09 8e 69 6f ?? 00 00 0a 13 04 09 11 04 28 ?? 00 00 2b 28 ?? 00 00 2b 13 05 de 1e } //1
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}