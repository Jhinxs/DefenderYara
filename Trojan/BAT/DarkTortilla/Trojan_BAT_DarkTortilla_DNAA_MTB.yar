
rule Trojan_BAT_DarkTortilla_DNAA_MTB{
	meta:
		description = "Trojan:BAT/DarkTortilla.DNAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {13 09 11 08 16 91 2d 02 2b 1f 11 06 14 72 ?? ?? 00 70 17 8d ?? 00 00 01 25 16 11 07 16 9a a2 14 14 17 17 28 ?? 00 00 0a 00 11 09 28 ?? 00 00 0a a2 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}