
rule Trojan_BAT_Heracles_AAGQ_MTB{
	meta:
		description = "Trojan:BAT/Heracles.AAGQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {01 13 04 09 11 04 16 08 6f ?? 00 00 0a 26 11 04 28 ?? 00 00 2b 28 ?? 00 00 2b 28 ?? 00 00 0a 13 05 11 05 72 01 00 00 70 6f ?? 00 00 0a 13 06 d0 ?? 00 00 01 28 ?? 00 00 0a 11 06 72 4d 00 00 70 28 ?? 00 00 0a 16 8d ?? 00 00 01 6f ?? 00 00 0a 26 de 14 09 2c 06 09 6f ?? 00 00 0a dc } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}