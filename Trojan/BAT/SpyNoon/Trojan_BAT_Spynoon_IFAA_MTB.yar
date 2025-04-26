
rule Trojan_BAT_Spynoon_IFAA_MTB{
	meta:
		description = "Trojan:BAT/Spynoon.IFAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {06 20 00 01 00 00 6f ?? 00 00 0a 06 7e ?? 00 00 04 28 ?? 00 00 0a 6f ?? 00 00 0a 06 7e ?? 00 00 04 28 ?? 00 00 0a 6f ?? 00 00 0a 06 06 6f ?? 00 00 0a 06 6f ?? 00 00 0a 6f ?? 00 00 0a 13 04 73 ?? 00 00 0a 0b 28 ?? 00 00 06 73 ?? 00 00 0a 0c 08 11 04 16 73 ?? 00 00 0a 0d 09 07 6f ?? 00 00 0a 07 6f ?? 00 00 0a 73 ?? 00 00 0a 13 05 de 1f } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}