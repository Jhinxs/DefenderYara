
rule Trojan_BAT_Redline_AAXC_MTB{
	meta:
		description = "Trojan:BAT/Redline.AAXC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {11 04 07 28 ?? 19 00 06 11 04 17 28 ?? 19 00 06 11 04 08 28 ?? 19 00 06 11 04 6f ?? 00 00 0a 13 05 11 05 09 16 09 8e 69 28 ?? 19 00 06 0a } //4
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}