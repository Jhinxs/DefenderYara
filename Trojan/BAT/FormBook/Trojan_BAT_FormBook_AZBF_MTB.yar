
rule Trojan_BAT_FormBook_AZBF_MTB{
	meta:
		description = "Trojan:BAT/FormBook.AZBF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {20 00 08 01 00 8d 5f 00 00 01 0a 16 0b 2b 1a 00 06 07 02 07 18 5a 18 6f ?? ?? ?? 0a 1f 10 28 ?? ?? ?? 0a 9c 00 07 17 58 } //2
		$a_01_1 = {46 00 69 00 6e 00 61 00 6c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 } //1 FinalProject
		$a_01_2 = {6d 75 72 65 79 } //1 murey
		$a_01_3 = {48 75 6d 70 68 72 65 79 } //1 Humphrey
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}