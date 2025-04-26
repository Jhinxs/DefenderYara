
rule Trojan_BAT_FormBook_AJBI_MTB{
	meta:
		description = "Trojan:BAT/FormBook.AJBI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {70 18 8d 17 00 00 01 25 16 72 ?? ?? ?? 70 a2 25 17 72 ?? ?? ?? 70 a2 14 14 14 28 } //2
		$a_01_1 = {52 00 65 00 6c 00 69 00 67 00 69 00 6f 00 6e 00 5f 00 4a 00 65 00 6f 00 70 00 61 00 72 00 64 00 79 00 } //1 Religion_Jeopardy
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}