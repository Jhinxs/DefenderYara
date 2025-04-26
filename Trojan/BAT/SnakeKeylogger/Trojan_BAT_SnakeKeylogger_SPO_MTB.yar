
rule Trojan_BAT_SnakeKeylogger_SPO_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.SPO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {11 04 11 06 09 11 06 9a 1f 10 28 ?? ?? ?? 0a 9c 11 06 17 58 13 06 11 06 09 8e 69 fe 04 13 07 11 07 2d dd } //1
		$a_01_1 = {48 00 6f 00 56 00 75 00 51 00 75 00 6f 00 63 00 54 00 72 00 75 00 6e 00 67 00 } //1 HoVuQuocTrung
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}