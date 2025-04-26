
rule Trojan_BAT_NjRat_ABXZ_MTB{
	meta:
		description = "Trojan:BAT/NjRat.ABXZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {25 16 18 8c ?? 00 00 01 a2 14 14 28 ?? 00 00 0a 00 06 72 ?? 00 00 70 28 ?? 00 00 0a 6f ?? 00 00 0a 00 06 6f ?? 00 00 0a 0b 07 02 7b ?? 00 00 04 16 02 7b ?? 00 00 04 8e 69 6f ?? 00 00 0a 0c 08 28 ?? 00 00 06 00 02 28 ?? 00 00 06 00 2a } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}