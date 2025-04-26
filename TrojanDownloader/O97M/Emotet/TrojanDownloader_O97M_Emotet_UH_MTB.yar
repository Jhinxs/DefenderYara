
rule TrojanDownloader_O97M_Emotet_UH_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.UH!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {44 6f 20 57 68 69 6c 65 20 [0-40] 2e 20 5f } //1
		$a_03_1 = {43 72 65 61 74 65 28 [0-20] 20 26 20 90 05 0f 06 41 2d 5a 61 2d 7a 2c } //1
		$a_03_2 = {2e 54 61 67 [0-20] 20 3d 20 [0-20] 20 2b 20 43 68 72 57 28 77 64 4b 65 79 53 29 20 2b 20 [0-20] 2e [0-20] 2e 54 61 67 20 2b } //1
		$a_03_3 = {3d 20 4a 6f 69 6e 28 [0-20] 2c 20 22 22 29 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}