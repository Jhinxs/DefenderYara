
rule TrojanDownloader_O97M_Powdow_RVAZ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RVAZ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {6d 79 46 69 6c 65 20 3d 20 22 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 75 70 64 61 74 65 2e 6a 73 22 } //1 myFile = "C:\Users\Public\update.js"
		$a_01_1 = {22 57 53 43 52 49 50 54 22 20 2b 20 22 20 22 20 2b 20 6d 79 46 69 6c 65 0d 0a 44 65 62 75 67 2e 41 73 73 65 72 74 20 53 68 65 6c 6c 28 61 2c 20 76 62 4e 6f 72 6d 61 6c 46 6f 63 75 73 29 0d 0a 45 6e 64 20 53 75 62 } //1
		$a_01_2 = {57 6f 72 6b 73 68 65 65 74 73 28 22 73 68 65 6d 61 6c 65 22 29 2e 52 61 6e 67 65 28 22 41 44 32 30 22 29 0d 0a 50 72 69 6e 74 20 23 54 65 78 74 46 69 6c 65 2c 20 79 6f 75 74 75 62 65 } //1
		$a_01_3 = {4f 70 65 6e 20 6d 79 46 69 6c 65 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 54 65 78 74 46 69 6c 65 } //1 Open myFile For Output As TextFile
		$a_01_4 = {57 6f 72 6b 62 6f 6f 6b 5f 4f 70 65 6e 28 29 } //1 Workbook_Open()
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}