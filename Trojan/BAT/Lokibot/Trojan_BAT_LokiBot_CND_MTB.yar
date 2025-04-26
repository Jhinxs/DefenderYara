
rule Trojan_BAT_LokiBot_CND_MTB{
	meta:
		description = "Trojan:BAT/LokiBot.CND!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {28 65 02 00 06 72 ?? 0b 00 70 72 ?? 0b 00 70 28 26 02 00 06 17 8d ?? 00 00 01 25 16 1f 2d 9d 28 27 02 00 06 0b } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}