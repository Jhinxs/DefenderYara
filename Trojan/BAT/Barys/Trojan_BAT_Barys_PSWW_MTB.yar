
rule Trojan_BAT_Barys_PSWW_MTB{
	meta:
		description = "Trojan:BAT/Barys.PSWW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 14 8e 69 28 ?? 00 00 0a 11 0c 11 06 11 12 6a 58 11 14 11 14 8e 69 16 6a 28 ?? 00 00 06 26 11 10 17 58 68 13 10 11 10 11 04 32 87 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}