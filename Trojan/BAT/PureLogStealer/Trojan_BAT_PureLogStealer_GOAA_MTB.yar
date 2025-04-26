
rule Trojan_BAT_PureLogStealer_GOAA_MTB{
	meta:
		description = "Trojan:BAT/PureLogStealer.GOAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {07 09 07 09 91 18 8d ?? 00 00 01 25 16 20 ?? 00 00 00 9c 25 17 20 ?? 00 00 00 9c 09 18 5d 91 61 d2 9c 00 09 17 58 0d 09 07 8e 69 fe 04 13 04 11 04 2d cc } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}