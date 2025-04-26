
rule Trojan_BAT_BitRat_NE_MTB{
	meta:
		description = "Trojan:BAT/BitRat.NE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {20 00 0c 00 00 28 ?? 00 00 0a 72 ?? 00 00 70 28 ?? 00 00 0a 0a 06 6f ?? 00 00 0a 0b 07 6f ?? 00 00 0a 0c 73 ?? 00 00 0a 0d } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}