
rule Trojan_BAT_DCRat_ABBN_MTB{
	meta:
		description = "Trojan:BAT/DCRat.ABBN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {06 17 58 0a 06 20 ?? ?? ?? 00 5d 0a 08 11 06 06 94 58 0c 08 20 ?? ?? ?? 00 5d 0c 11 06 06 94 13 04 11 06 06 11 06 08 94 9e 11 06 08 11 04 9e 11 06 11 06 06 94 11 06 08 94 58 20 ?? ?? ?? 00 5d 94 0d 11 07 07 03 07 91 09 61 d2 9c 2b 07 13 07 38 ?? ?? ?? ff 07 17 58 0b 2b 07 13 06 } //3
		$a_01_1 = {44 00 4c 00 71 00 48 00 74 00 } //1 DLqHt
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1) >=4
 
}