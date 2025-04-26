
rule TrojanDownloader_O97M_Lazust_YA{
	meta:
		description = "TrojanDownloader:O97M/Lazust.YA,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {61 6e 79 66 69 6c 65 2e 32 35 35 62 69 74 73 2e 63 6f 6d 2f 77 69 78 2f 64 6f 77 6e 6c 6f 61 64 3f 69 64 3d [0-20] 22 22 3e 3e [0-10] 2e 56 42 53 } //1
		$a_03_1 = {2e 56 42 53 20 20 26 20 74 49 4d 65 4f 55 54 20 [0-20] 20 26 20 [0-20] 2e 45 58 45 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}