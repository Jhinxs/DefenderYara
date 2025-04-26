
rule Trojan_BAT_PureLogStealer_UAAA_MTB{
	meta:
		description = "Trojan:BAT/PureLogStealer.UAAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_01_0 = {07 11 0b 91 11 08 61 11 0a 59 20 00 02 00 00 58 13 0c 11 0c 20 00 01 00 00 5d 20 00 04 00 00 58 20 00 02 00 00 5d 13 0d 11 0d 20 00 01 00 00 59 20 00 04 00 00 58 20 ff 00 00 00 5f 13 0e 07 11 07 11 0e d2 9c 11 07 17 58 13 07 } //4
		$a_01_1 = {4a 00 37 00 43 00 56 00 34 00 44 00 37 00 55 00 35 00 34 00 42 00 35 00 46 00 32 00 5a 00 48 00 38 00 34 00 35 00 46 00 37 00 5a 00 } //1 J7CV4D7U54B5F2ZH845F7Z
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}