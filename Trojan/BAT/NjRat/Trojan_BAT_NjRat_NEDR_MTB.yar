
rule Trojan_BAT_NjRat_NEDR_MTB{
	meta:
		description = "Trojan:BAT/NjRat.NEDR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 04 00 00 "
		
	strings :
		$a_03_0 = {13 05 0d 2b 39 02 09 28 ?? 00 00 0a 28 ?? 00 00 0a 6a 03 28 ?? 00 00 0a 04 07 5d 6c 58 28 ?? 00 00 0a b8 6e da 0c 06 08 } //10
		$a_01_1 = {4c 00 6f 00 61 00 64 00 } //2 Load
		$a_01_2 = {45 00 6e 00 74 00 72 00 79 00 50 00 6f 00 69 00 6e 00 74 00 } //2 EntryPoint
		$a_01_3 = {50 75 72 69 74 79 78 } //2 Purityx
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2) >=16
 
}