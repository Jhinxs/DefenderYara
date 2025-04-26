
rule TrojanDownloader_O97M_EncDoc_ERS_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.ERS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {23 49 66 20 56 42 41 37 20 54 68 65 6e } //1 #If VBA7 Then
		$a_01_1 = {50 72 69 76 61 74 65 20 44 65 63 6c 61 72 65 20 50 74 72 53 61 66 65 20 46 75 6e 63 74 69 6f 6e 20 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 20 4c 69 62 20 22 75 72 6c 6d 6f 6e 22 20 5f } //1 Private Declare PtrSafe Function URLDownloadToFile Lib "urlmon" _
		$a_01_2 = {41 6c 69 61 73 20 22 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 22 20 28 42 79 56 61 6c 20 70 43 61 6c 6c 65 72 20 41 73 20 4c 6f 6e 67 2c 20 5f } //1 Alias "URLDownloadToFileA" (ByVal pCaller As Long, _
		$a_01_3 = {76 6e 64 68 20 3d 20 70 69 72 6f 6b 66 6d 20 26 20 66 6b 64 64 6c 20 26 20 72 67 64 72 67 6b 6a 20 26 20 6b 6a 64 64 63 6f 6a 20 26 20 62 66 62 6b 72 66 76 20 26 20 53 68 65 65 74 73 28 22 44 6f 63 73 22 29 2e 52 61 6e 67 65 28 22 41 33 35 22 29 } //1 vndh = pirokfm & fkddl & rgdrgkj & kjddcoj & bfbkrfv & Sheets("Docs").Range("A35")
		$a_01_4 = {64 6c 70 61 74 68 20 3d 20 53 68 65 65 74 73 28 22 44 6f 63 73 22 29 2e 52 61 6e 67 65 28 22 53 35 30 22 29 } //1 dlpath = Sheets("Docs").Range("S50")
		$a_01_5 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 20 30 2c 20 76 6e 64 68 2c 20 64 6c 70 61 74 68 2c 20 30 2c 20 30 } //1 URLDownloadToFile 0, vndh, dlpath, 0, 0
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}