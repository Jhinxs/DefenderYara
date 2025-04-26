
rule Trojan_BAT_zgRAT_ABSA_MTB{
	meta:
		description = "Trojan:BAT/zgRAT.ABSA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {0c 08 07 6f ?? 00 00 0a 16 73 ?? 00 00 0a 0d 06 8e 69 8d ?? 00 00 01 13 04 09 11 04 16 11 04 8e 69 6f ?? 00 00 0a 26 11 04 28 ?? 00 00 06 26 73 ?? 00 00 06 17 6f ?? 00 00 06 7e ?? 00 00 04 6f ?? 00 00 06 de 14 09 2c 06 09 6f ?? 00 00 0a dc } //5
		$a_01_1 = {5f 00 30 00 30 00 37 00 53 00 74 00 75 00 62 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 _007Stub.Properties.Resources
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}