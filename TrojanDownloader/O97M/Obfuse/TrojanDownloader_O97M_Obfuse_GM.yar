
rule TrojanDownloader_O97M_Obfuse_GM{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.GM,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-10] 20 2b 20 [0-10] 20 2b 20 [0-10] 29 20 5f } //1
		$a_01_1 = {2e 43 72 65 61 74 65 20 5f } //1 .Create _
		$a_01_2 = {53 75 62 20 61 75 74 6f 6f 70 65 6e 28 29 } //1 Sub autoopen()
		$a_01_3 = {53 68 6f 77 57 69 6e 64 6f 77 21 20 5f } //1 ShowWindow! _
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}