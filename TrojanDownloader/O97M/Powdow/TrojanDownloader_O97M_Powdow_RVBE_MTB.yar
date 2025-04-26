
rule TrojanDownloader_O97M_Powdow_RVBE_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RVBE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {22 57 53 43 52 49 50 54 20 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 50 69 63 74 75 72 65 73 5c 74 65 78 74 66 69 6c 65 2e 4a 53 22 } //1 "WSCRIPT C:\Users\Public\Pictures\textfile.JS"
		$a_01_1 = {57 6f 72 6b 73 68 65 65 74 73 28 22 53 68 65 65 74 32 22 29 2e 52 61 6e 67 65 28 22 53 4f 53 31 31 31 22 29 0d 0a 50 72 69 6e 74 20 23 54 65 78 74 46 69 6c 65 2c 20 79 6f 75 74 75 62 65 } //1
		$a_01_2 = {4f 70 65 6e 20 6d 79 46 69 6c 65 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 54 65 78 74 46 69 6c 65 } //1 Open myFile For Output As TextFile
		$a_01_3 = {43 61 6c 6c 20 53 68 65 6c 6c 28 61 2c 20 76 62 4e 6f 72 6d 61 6c 46 6f 63 75 73 29 } //1 Call Shell(a, vbNormalFocus)
		$a_01_4 = {57 6f 72 6b 62 6f 6f 6b 5f 4f 70 65 6e 28 29 } //1 Workbook_Open()
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}