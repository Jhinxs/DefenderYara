
rule Trojan_BAT_FormBook_NI_MTB{
	meta:
		description = "Trojan:BAT/FormBook.NI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {02 07 6f fd 00 00 0a 06 61 ?? ?? ?? ?? ?? 5a 0a 07 17 58 0b 07 02 6f e8 00 00 0a 2f 02 2b e1 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}
rule Trojan_BAT_FormBook_NI_MTB_2{
	meta:
		description = "Trojan:BAT/FormBook.NI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 "
		
	strings :
		$a_01_0 = {07 11 05 91 11 07 61 13 09 07 11 08 91 13 0a 02 } //5
		$a_01_1 = {13 06 11 06 11 05 1f 16 5d 91 13 07 11 05 17 58 08 5d 13 08 } //5
		$a_81_2 = {2f 44 61 74 61 53 65 74 41 2e 78 73 64 } //1 /DataSetA.xsd
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_81_2  & 1)*1) >=11
 
}
rule Trojan_BAT_FormBook_NI_MTB_3{
	meta:
		description = "Trojan:BAT/FormBook.NI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {8d 1c 00 00 01 0a 06 16 d0 1b 00 00 01 28 0f 00 00 0a a2 06 17 d0 1c 00 00 01 28 0f 00 00 0a a2 06 28 a2 00 00 0a 14 18 8d 14 00 00 01 0b 07 16 02 8c 1b 00 00 01 a2 07 17 03 a2 07 6f a3 00 00 0a 74 1f 00 00 01 2a } //1
		$a_01_1 = {b5 a2 3d 09 0f 00 00 00 00 00 00 00 00 00 00 01 } //1
		$a_01_2 = {47 65 74 44 65 6c 65 67 61 74 65 46 6f 72 46 75 6e 63 74 69 6f 6e 50 6f 69 6e 74 65 72 } //1 GetDelegateForFunctionPointer
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}