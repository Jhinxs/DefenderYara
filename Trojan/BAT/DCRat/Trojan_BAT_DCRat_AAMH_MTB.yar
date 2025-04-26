
rule Trojan_BAT_DCRat_AAMH_MTB{
	meta:
		description = "Trojan:BAT/DCRat.AAMH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 "
		
	strings :
		$a_03_0 = {72 29 00 00 70 28 ?? 00 00 0a 28 ?? 00 00 06 02 28 ?? 00 00 06 2a } //3
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_3 = {6e 00 54 00 4f 00 7a 00 32 00 61 00 56 00 35 00 6d 00 48 00 51 00 47 00 46 00 4a 00 39 00 68 00 73 00 36 00 79 00 49 00 4d 00 32 00 58 00 46 00 73 00 78 00 5a 00 7a 00 6a 00 7a 00 55 00 67 00 58 00 58 00 47 00 30 00 62 00 52 00 57 00 68 00 6a 00 49 00 41 00 3d 00 } //1 nTOz2aV5mHQGFJ9hs6yIM2XFsxZzjzUgXXG0bRWhjIA=
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=6
 
}