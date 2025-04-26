
rule Trojan_BAT_Stealer_ITAA_MTB{
	meta:
		description = "Trojan:BAT/Stealer.ITAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_01_0 = {11 05 11 01 91 11 05 11 02 91 58 20 00 01 00 00 5d 13 13 } //5
		$a_03_1 = {03 11 11 8f ?? 00 00 01 25 71 ?? 00 00 01 11 05 11 13 6f ?? 00 00 0a a5 ?? 00 00 01 61 d2 } //5
	condition:
		((#a_01_0  & 1)*5+(#a_03_1  & 1)*5) >=10
 
}