
rule Trojan_BAT_FormBook_AAVI_MTB{
	meta:
		description = "Trojan:BAT/FormBook.AAVI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 0b 07 18 8c ?? 00 00 01 28 ?? 00 00 0a a5 ?? 00 00 01 6f ?? 00 00 0a 00 07 18 8c ?? 00 00 01 28 ?? 00 00 0a a5 ?? 00 00 01 6f ?? 00 00 0a 00 07 72 01 00 00 70 28 ?? 00 00 0a 6f ?? 00 00 0a 00 07 6f ?? 00 00 0a 0c 08 06 16 06 8e 69 6f ?? 00 00 0a 0d } //4
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}