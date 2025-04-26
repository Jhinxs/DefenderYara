
rule TrojanDownloader_O97M_Togkino_gen_A{
	meta:
		description = "TrojanDownloader:O97M/Togkino.gen!A,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //1 Sub AutoOpen()
		$a_01_1 = {4f 6e 20 45 72 72 6f 72 20 52 65 73 75 6d 65 20 4e 65 78 74 } //1 On Error Resume Next
		$a_01_2 = {30 2c 20 22 68 74 74 70 3a 2f 2f } //1 0, "http://
		$a_03_3 = {22 2c 20 45 6e 76 69 72 6f 6e 28 22 (41 50 50 44 41 54 41|54 45 4d 50) 22 29 20 26 20 22 5c } //1
		$a_03_4 = {53 68 65 6c 6c 20 45 6e 76 69 72 6f 6e 28 22 (41 50 50 44 41 54 41|54 45 4d 50) 22 29 20 26 20 22 5c } //1
		$a_01_5 = {41 6c 69 61 73 20 22 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 22 } //1 Alias "URLDownloadToFileA"
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}