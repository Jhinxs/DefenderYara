
rule Trojan_BAT_PureLogStealer_MFAA_MTB{
	meta:
		description = "Trojan:BAT/PureLogStealer.MFAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {13 04 11 04 72 ?? 00 00 70 28 ?? 00 00 0a 72 ?? 00 00 70 28 ?? 00 00 0a 6f ?? 00 00 0a 13 05 73 ?? 00 00 0a 13 06 11 06 11 05 17 73 ?? 00 00 0a 13 07 11 07 06 16 06 8e 69 6f ?? 00 00 0a 11 06 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}