
rule Trojan_BAT_StormKitty_AAXB_MTB{
	meta:
		description = "Trojan:BAT/StormKitty.AAXB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 0a 12 00 28 ?? 00 00 06 06 74 ?? 00 00 01 0a 12 00 28 ?? 00 00 06 06 74 ?? 00 00 01 0a 12 00 28 ?? 00 00 06 06 74 ?? 00 00 01 6f ?? 00 00 0a 02 16 02 8e 69 6f ?? 00 00 0a 2a } //4
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}