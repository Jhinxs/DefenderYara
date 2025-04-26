
rule TrojanDownloader_O97M_Donoff_RR_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.RR!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0d 00 0d 00 08 00 00 "
		
	strings :
		$a_01_0 = {22 64 63 64 76 20 68 67 66 6e 20 6d 6a 68 67 6d 6a 22 } //2 "dcdv hgfn mjhgmj"
		$a_01_1 = {22 62 64 68 67 66 20 20 62 67 66 62 20 37 38 39 22 } //2 "bdhgf  bgfb 789"
		$a_01_2 = {22 74 65 72 67 20 75 79 74 69 20 67 72 20 64 68 20 6a 79 20 66 65 22 } //2 "terg uyti gr dh jy fe"
		$a_01_3 = {4c 65 66 74 28 70 70 74 4e 61 6d 65 2c 20 49 6e 53 74 72 28 70 70 74 4e 61 6d 65 2c 20 22 2e 22 29 29 20 26 20 22 70 64 66 22 } //2 Left(pptName, InStr(pptName, ".")) & "pdf"
		$a_01_4 = {49 6e 53 74 72 28 64 65 73 63 65 6e 64 65 72 73 5f 6c 69 73 74 2c 20 4d 69 64 24 28 70 68 72 61 73 65 2c 20 78 2c 20 31 29 29 } //2 InStr(descenders_list, Mid$(phrase, x, 1))
		$a_01_5 = {41 63 74 69 76 65 50 72 65 73 65 6e 74 61 74 69 6f 6e 2e 45 78 70 6f 72 74 41 73 46 69 78 65 64 46 6f 72 6d 61 74 20 50 44 46 4e 61 6d 65 } //2 ActivePresentation.ExportAsFixedFormat PDFName
		$a_01_6 = {2e 52 75 6e 28 64 65 72 79 6b 65 71 62 71 6a 72 6d 6f 70 61 78 6d 6d 76 70 6a 7a 69 6b 65 2c 20 67 64 77 6f 61 73 64 6d 6a 66 73 7a 29 } //1 .Run(derykeqbqjrmopaxmmvpjzike, gdwoasdmjfsz)
		$a_01_7 = {2e 52 75 6e 28 70 6f 65 61 76 64 67 69 6c 6a 69 74 66 6f 7a 74 7a 6d 6b 68 6c 6c 7a 76 61 6d 6b 6f 68 2c 20 62 79 62 75 70 73 62 29 } //1 .Run(poeavdgiljitfoztzmkhllzvamkoh, bybupsb)
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=13
 
}