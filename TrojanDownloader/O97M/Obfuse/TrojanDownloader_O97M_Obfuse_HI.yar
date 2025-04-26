
rule TrojanDownloader_O97M_Obfuse_HI{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.HI,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {66 55 32 20 3d 20 22 68 74 74 70 3a 2f 2f 35 34 2e 33 39 2e 32 33 33 2e 31 33 34 22 } //1 fU2 = "http://54.39.233.134"
		$a_01_1 = {66 55 32 20 3d 20 22 68 74 74 70 3a 2f 2f 35 34 2e 33 39 2e 32 33 33 2e 31 33 32 2f 64 65 31 2e 74 72 70 22 } //1 fU2 = "http://54.39.233.132/de1.trp"
		$a_01_2 = {43 61 6c 6c 20 53 68 65 6c 6c 28 66 50 31 } //1 Call Shell(fP1
		$a_03_3 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 28 30 2c 20 66 55 31 2c 20 66 50 31 [0-05] 2c 20 30 2c 20 30 29 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}