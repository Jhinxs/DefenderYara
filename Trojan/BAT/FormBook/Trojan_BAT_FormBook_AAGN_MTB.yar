
rule Trojan_BAT_FormBook_AAGN_MTB{
	meta:
		description = "Trojan:BAT/FormBook.AAGN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {64 38 62 63 66 36 64 62 2d 66 38 61 66 2d 34 34 61 36 2d 39 66 33 62 2d 62 34 62 64 32 39 61 38 33 61 39 39 } //1 d8bcf6db-f8af-44a6-9f3b-b4bd29a83a99
		$a_01_1 = {57 00 68 00 61 00 6d 00 6f 00 4c 00 61 00 75 00 6e 00 63 00 68 00 65 00 72 00 2e 00 43 00 68 00 61 00 72 00 74 00 73 00 } //1 WhamoLauncher.Charts
		$a_01_2 = {47 00 61 00 73 00 20 00 4e 00 61 00 74 00 75 00 72 00 61 00 6c 00 20 00 46 00 65 00 6e 00 6f 00 73 00 61 00 } //1 Gas Natural Fenosa
		$a_01_3 = {47 65 74 50 69 78 65 6c } //1 GetPixel
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}