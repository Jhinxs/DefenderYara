
rule TrojanDownloader_O97M_EncDoc_STD{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.STD,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {52 65 70 6c 61 63 65 28 28 22 68 74 74 70 3a 2f 2f [0-20] 22 29 2c 20 22 [0-0a] 22 2c 20 22 65 78 65 22 29 } //1
		$a_02_1 = {45 6e 76 69 72 6f 6e 24 [0-10] 31 31 36 [0-10] 31 30 39 [0-10] 31 31 32 [0-20] 52 65 70 6c 61 63 65 28 22 76 62 63 2e [0-0a] 22 2c 20 22 [0-0a] 22 2c 20 22 65 78 65 22 29 } //1
		$a_02_2 = {53 68 65 6c 6c [0-40] 48 69 64 65 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}