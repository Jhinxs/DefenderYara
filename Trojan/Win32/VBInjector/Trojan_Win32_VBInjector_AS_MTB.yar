
rule Trojan_Win32_VBInjector_AS_MTB{
	meta:
		description = "Trojan:Win32/VBInjector.AS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {50 0d 22 85 9f d1 58 56 21 d6 5e 56 21 d6 5e 81 f9 24 51 00 00 75 ad } //1
		$a_01_1 = {68 00 75 00 6d 00 72 00 73 00 79 00 67 00 65 00 6e 00 67 00 65 00 6e 00 65 00 72 00 61 00 6c 00 61 00 75 00 64 00 69 00 74 00 72 00 73 00 6b 00 72 00 70 00 70 00 65 00 72 00 6e 00 65 00 6d 00 } //1 humrsygengeneralauditrskrppernem
		$a_01_2 = {52 00 65 00 6b 00 6e 00 65 00 61 00 64 00 70 00 61 00 72 00 74 00 65 00 72 00 72 00 65 00 72 00 73 00 75 00 64 00 6d 00 61 00 74 00 74 00 65 00 74 00 62 00 69 00 6f 00 74 00 65 00 6b 00 } //1 Rekneadparterrersudmattetbiotek
		$a_01_3 = {44 00 6f 00 72 00 73 00 6b 00 65 00 69 00 61 00 67 00 74 00 74 00 61 00 67 00 65 00 6c 00 73 00 65 00 73 00 76 00 65 00 6c 00 73 00 65 00 72 00 72 00 64 00 76 00 69 00 6e 00 65 00 6e 00 73 00 } //1 Dorskeiagttagelsesvelserrdvinens
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}