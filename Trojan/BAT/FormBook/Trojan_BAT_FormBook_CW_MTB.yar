
rule Trojan_BAT_FormBook_CW_MTB{
	meta:
		description = "Trojan:BAT/FormBook.CW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {02 1f 0a 16 8d ?? 00 00 01 28 ?? 00 00 0a a5 } //2
		$a_01_1 = {56 4d 45 6e 74 72 79 } //1 VMEntry
		$a_01_2 = {4b 6f 69 56 4d } //1 KoiVM
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}