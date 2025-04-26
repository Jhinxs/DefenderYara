
rule Trojan_BAT_DCRat_CDC_MTB{
	meta:
		description = "Trojan:BAT/DCRat.CDC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {28 07 00 00 0a 11 00 28 ?? ?? ?? 06 13 06 20 ?? ?? ?? 00 7e ?? ?? ?? 04 7b ?? ?? ?? 04 39 ?? ?? ?? ff 26 20 ?? ?? ?? 00 38 ?? ?? ?? ff 73 ?? ?? ?? 0a 13 02 20 ?? ?? ?? 00 } //5
		$a_01_1 = {49 6e 67 6a 71 67 76 66 6f 66 79 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //1 Ingjqgvfofy.Properties.Resources
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}