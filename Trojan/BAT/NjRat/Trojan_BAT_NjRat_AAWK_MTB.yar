
rule Trojan_BAT_NjRat_AAWK_MTB{
	meta:
		description = "Trojan:BAT/NjRat.AAWK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {08 0d 07 8e 69 13 04 11 04 09 8e 69 fe 02 13 05 11 05 2c 02 2b 05 2b 0d 0c 2b e5 09 8e 69 13 04 2b 03 0b 2b d2 07 09 11 04 28 ?? 00 00 0a 2b 07 6f ?? 00 00 0a 2b b3 06 09 6f ?? 00 00 0a 2b 07 6f ?? 00 00 0a 2b 9b 06 09 6f ?? 00 00 0a 2b 0a 6f ?? 00 00 0a 38 ?? ff ff ff 06 6f ?? 00 00 0a 13 06 2b 0a 6f ?? 00 00 0a 38 ?? ff ff ff 11 06 02 16 02 8e 69 6f ?? 00 00 0a 2a } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}