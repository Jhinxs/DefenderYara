
rule Trojan_BAT_DarkTortilla_AAIR_MTB{
	meta:
		description = "Trojan:BAT/DarkTortilla.AAIR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {13 07 11 07 28 ?? 00 00 0a 03 28 ?? ?? 00 06 0d 16 13 0c 2b 9d 07 75 ?? 00 00 1b 11 07 1f 0a 8c ?? 00 00 01 28 ?? 01 00 0a 28 ?? 01 00 0a 6f ?? 01 00 0a 08 17 d6 0c 1a 13 0c 38 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}