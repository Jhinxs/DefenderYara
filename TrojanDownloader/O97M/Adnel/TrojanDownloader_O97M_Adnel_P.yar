
rule TrojanDownloader_O97M_Adnel_P{
	meta:
		description = "TrojanDownloader:O97M/Adnel.P,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {3d 20 53 74 72 52 65 76 65 72 73 65 28 22 54 45 47 22 29 } //1 = StrReverse("TEG")
		$a_03_1 = {3d 20 43 61 6c 6c 42 79 4e 61 6d 65 28 [0-10] 2c 20 [0-10] 2c 20 56 62 4d 65 74 68 6f 64 2c 20 [0-10] 2c 20 22 68 74 74 70 3a 2f 2f [0-30] 2f [0-30] 2e 65 78 65 22 2c 20 46 61 6c 73 65 29 } //1
		$a_01_2 = {2b 20 53 74 72 52 65 76 65 72 73 65 28 22 6d 6e 6f 72 69 76 6e 45 64 22 29 } //1 + StrReverse("mnorivnEd")
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}