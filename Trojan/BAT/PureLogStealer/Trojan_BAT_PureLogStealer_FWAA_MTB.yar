
rule Trojan_BAT_PureLogStealer_FWAA_MTB{
	meta:
		description = "Trojan:BAT/PureLogStealer.FWAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {14 0a 38 1c 00 00 00 00 28 ?? 00 00 06 0a 06 16 06 8e 69 28 ?? 00 00 0a dd ?? 00 00 00 26 dd 00 00 00 00 06 2c e1 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}