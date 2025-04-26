
rule Trojan_BAT_Seraph_AAHX_MTB{
	meta:
		description = "Trojan:BAT/Seraph.AAHX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {06 20 00 01 00 00 6f ?? 00 00 0a 06 20 8a 66 01 1b 28 ?? 00 00 06 28 ?? 00 00 0a 6f ?? 00 00 0a 06 20 b9 66 01 1b 28 ?? 00 00 06 28 ?? 00 00 0a 6f ?? 00 00 0a 06 06 6f ?? 00 00 0a 06 6f ?? 00 00 0a 6f ?? 00 00 0a 13 04 73 ?? 00 00 0a 0c 08 11 04 17 73 ?? 00 00 0a 0d 14 0b 2b 06 28 ?? 00 00 06 0b 07 2c f7 09 07 16 07 8e 69 6f ?? 00 00 0a 08 6f ?? 00 00 0a 13 05 de 18 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}