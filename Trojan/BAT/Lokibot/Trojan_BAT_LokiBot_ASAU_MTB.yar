
rule Trojan_BAT_LokiBot_ASAU_MTB{
	meta:
		description = "Trojan:BAT/LokiBot.ASAU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 04 08 07 6f ?? 00 00 0a 13 0e 16 0d 11 0a 06 9a 13 05 11 05 20 [0-04] 28 ?? 00 00 06 28 ?? 00 00 0a 2d 28 11 05 20 [0-04] 28 ?? 00 00 06 28 ?? 00 00 0a 2d 1f 11 05 20 [0-04] 28 ?? 00 00 06 28 ?? 00 00 0a 2d 16 2b 1c 12 0e 28 ?? 00 00 0a 0d 2b 12 12 0e 28 ?? 00 00 0a 0d 2b 08 12 0e 28 ?? 00 00 0a 0d 11 06 09 6f ?? 00 00 0a 08 17 58 0c 08 11 08 32 85 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}