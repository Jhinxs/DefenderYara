
rule Trojan_BAT_ClipBanker_KAC_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.KAC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 05 9a 0c 06 08 6f ?? 00 00 0a 2c 1d d0 ?? 00 00 02 28 ?? 00 00 0a 08 28 ?? 00 00 0a a5 ?? 00 00 02 73 ?? 00 00 0a 0b 2b 0e 11 05 17 58 13 05 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}