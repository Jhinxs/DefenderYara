
rule Trojan_BAT_Bulz_AMBB_MTB{
	meta:
		description = "Trojan:BAT/Bulz.AMBB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {07 1f 3a 28 ?? 00 00 0a 28 ?? 00 00 0a 11 07 28 ?? 00 00 0a 28 ?? 00 00 0a 0b 00 11 05 17 58 13 05 11 05 11 04 6f ?? 00 00 0a 32 92 12 01 28 ?? 00 00 0a 28 ?? 00 00 2b 28 ?? 00 00 2b 0c 02 06 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}