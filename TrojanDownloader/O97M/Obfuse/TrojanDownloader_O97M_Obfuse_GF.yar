
rule TrojanDownloader_O97M_Obfuse_GF{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.GF,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {2e 43 72 65 61 74 65 [0-01] 28 [0-10] 2c 20 [0-25] 2c 20 } //2
		$a_01_1 = {53 75 62 20 61 75 74 6f 6f 70 65 6e 28 29 } //1 Sub autoopen()
		$a_03_2 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-10] 29 } //1
		$a_03_3 = {53 68 6f 77 57 69 6e 64 6f 77 [0-01] 20 5f } //1
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=5
 
}