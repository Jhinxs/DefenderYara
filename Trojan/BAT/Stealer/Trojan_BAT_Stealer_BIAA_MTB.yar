
rule Trojan_BAT_Stealer_BIAA_MTB{
	meta:
		description = "Trojan:BAT/Stealer.BIAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_01_0 = {11 08 11 02 91 11 08 11 03 91 58 20 00 01 00 00 5d 13 07 } //2
		$a_03_1 = {02 11 05 8f ?? 00 00 01 25 71 ?? 00 00 01 11 08 11 07 91 61 d2 } //2
	condition:
		((#a_01_0  & 1)*2+(#a_03_1  & 1)*2) >=4
 
}