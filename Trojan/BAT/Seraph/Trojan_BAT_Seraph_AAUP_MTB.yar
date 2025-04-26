
rule Trojan_BAT_Seraph_AAUP_MTB{
	meta:
		description = "Trojan:BAT/Seraph.AAUP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 25 11 02 28 ?? 01 00 06 25 17 6f ?? 00 00 0a 25 18 28 ?? 01 00 06 25 11 00 28 ?? 01 00 06 6f ?? 00 00 0a 11 01 16 11 01 8e 69 28 ?? 01 00 06 13 03 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}