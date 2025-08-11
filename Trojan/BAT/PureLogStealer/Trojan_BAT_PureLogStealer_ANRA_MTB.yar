
rule Trojan_BAT_PureLogStealer_ANRA_MTB{
	meta:
		description = "Trojan:BAT/PureLogStealer.ANRA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {03 08 91 0d 09 18 28 ?? 00 00 06 0d 09 06 59 08 59 20 ff 00 00 00 5f d2 0d 09 66 d2 0d 07 08 09 9c 08 17 58 0c 08 03 8e 69 32 d5 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}