
rule TrojanDownloader_O97M_Obfuse_KH_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.KH!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {43 61 6c 6c 20 [0-07] 28 [0-09] 2e [0-09] 2c 20 22 76 65 72 69 6e 73 74 65 72 65 2e 78 6c 73 22 2c 20 30 29 } //1
		$a_01_1 = {28 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 29 } //1 (Environ("TEMP"))
		$a_03_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-07] 2e 54 61 67 29 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}