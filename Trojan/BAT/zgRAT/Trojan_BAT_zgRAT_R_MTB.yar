
rule Trojan_BAT_ZgRAT_R_MTB{
	meta:
		description = "Trojan:BAT/ZgRAT.R!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {00 00 0a dc 07 28 ?? 00 00 2b 28 ?? 00 00 2b 28 ?? 00 00 0a 6f ?? 00 00 0a 28 ?? 00 00 2b 72 ?? 00 00 70 20 00 01 00 00 14 14 14 6f } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}