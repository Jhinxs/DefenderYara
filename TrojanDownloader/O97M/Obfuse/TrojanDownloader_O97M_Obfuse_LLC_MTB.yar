
rule TrojanDownloader_O97M_Obfuse_LLC_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.LLC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {3d 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 56 61 72 69 61 62 6c 65 73 28 22 [0-15] 22 29 2e 56 61 6c 75 65 3a } //1
		$a_01_1 = {53 68 65 6c 6c 20 } //1 Shell 
		$a_03_2 = {3d 20 43 4c 6e 67 28 [0-20] 20 26 20 4d 69 64 28 [0-20] 2c 20 [0-20] 2c 20 32 29 29 } //1
		$a_03_3 = {47 6f 54 6f 20 [0-15] 45 6e 64 20 53 75 62 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}