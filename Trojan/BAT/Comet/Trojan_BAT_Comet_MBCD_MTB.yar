
rule Trojan_BAT_Comet_MBCD_MTB{
	meta:
		description = "Trojan:BAT/Comet.MBCD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {72 01 00 00 70 06 11 04 9a 28 ?? 00 00 06 1f 7b 61 08 61 8c ?? 00 00 01 28 ?? 00 00 0a 13 05 72 ?? 00 00 70 11 05 11 05 } //1
		$a_03_1 = {0a 18 59 18 6f ?? 00 00 0a 28 ?? 00 00 0a 13 05 07 11 04 11 05 28 ?? 00 00 06 9c 08 09 58 0c 11 04 17 58 13 04 11 04 06 8e 69 32 a8 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}