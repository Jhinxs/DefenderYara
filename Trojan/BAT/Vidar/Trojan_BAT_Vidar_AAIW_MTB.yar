
rule Trojan_BAT_Vidar_AAIW_MTB{
	meta:
		description = "Trojan:BAT/Vidar.AAIW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 25 11 02 28 ?? ?? 00 06 25 17 28 ?? ?? 00 06 25 18 6f ?? 00 00 0a 25 11 00 6f ?? 00 00 0a 28 ?? ?? 00 06 11 04 16 11 04 8e 69 28 ?? ?? 00 06 13 03 } //3
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1) >=4
 
}