
rule Trojan_BAT_Seraph_AANL_MTB{
	meta:
		description = "Trojan:BAT/Seraph.AANL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {25 11 02 7e ?? 00 00 04 28 ?? 01 00 06 25 17 7e ?? 00 00 04 28 ?? 01 00 06 25 18 7e ?? 00 00 04 28 ?? 01 00 06 25 11 00 7e ?? 00 00 04 28 ?? 01 00 06 7e ?? 00 00 04 28 ?? 01 00 06 11 04 16 11 04 8e 69 7e ?? 00 00 04 28 ?? 01 00 06 13 03 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}