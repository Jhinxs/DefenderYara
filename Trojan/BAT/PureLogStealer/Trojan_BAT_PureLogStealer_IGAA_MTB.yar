
rule Trojan_BAT_PureLogStealer_IGAA_MTB{
	meta:
		description = "Trojan:BAT/PureLogStealer.IGAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 06 06 6f ?? 00 00 0a 06 6f ?? 00 00 0a 6f ?? 00 00 0a 0b 73 ?? 00 00 0a 0c 28 ?? 00 00 06 73 ?? 00 00 0a 0d 09 07 16 73 ?? 00 00 0a 13 04 11 04 08 6f ?? 00 00 0a 08 6f ?? 00 00 0a 73 ?? 00 00 0a 13 05 dd } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}