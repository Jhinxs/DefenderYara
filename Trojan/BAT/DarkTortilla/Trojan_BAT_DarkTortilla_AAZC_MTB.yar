
rule Trojan_BAT_DarkTortilla_AAZC_MTB{
	meta:
		description = "Trojan:BAT/DarkTortilla.AAZC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 0c 1f 0c 13 09 38 ?? ff ff ff 07 74 ?? 00 00 1b 08 28 ?? 00 00 0a 6f ?? 00 00 0a 11 05 11 04 12 05 28 ?? 00 00 0a 13 07 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}