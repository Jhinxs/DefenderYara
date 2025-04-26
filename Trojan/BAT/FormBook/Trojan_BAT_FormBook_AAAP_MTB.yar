
rule Trojan_BAT_FormBook_AAAP_MTB{
	meta:
		description = "Trojan:BAT/FormBook.AAAP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {0a 13 04 73 ?? ?? 00 0a 0b 14 fe ?? ?? 09 00 06 73 ?? 05 00 0a 28 ?? 09 00 06 28 ?? 0b 00 06 75 ?? 00 00 1b 73 ?? 05 00 0a 0c 08 11 04 16 73 ?? ?? 00 0a 0d 09 07 6f ?? 05 00 0a 7e ?? ?? 00 04 07 6f ?? ?? 00 0a 14 6f ?? ?? 00 0a de 15 } //3
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=5
 
}