
rule Trojan_BAT_Heracles_SPCC_MTB{
	meta:
		description = "Trojan:BAT/Heracles.SPCC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {06 18 d8 0a 06 1f ?? fe 02 13 ?? 11 ?? 2c 03 1f ?? 0a 00 06 1f ?? 5d 16 fe 03 13 ?? 11 ?? 2d e0 06 17 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}