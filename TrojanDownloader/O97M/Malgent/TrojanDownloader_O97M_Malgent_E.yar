
rule TrojanDownloader_O97M_Malgent_E{
	meta:
		description = "TrojanDownloader:O97M/Malgent.E,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {23 49 66 20 56 42 41 37 20 41 6e 64 20 57 69 6e 36 34 20 41 6e 64 20 31 20 54 68 65 6e } //1 #If VBA7 And Win64 And 1 Then
		$a_00_1 = {50 72 69 76 61 74 65 20 44 65 63 6c 61 72 65 20 50 74 72 53 61 66 65 20 46 75 6e 63 74 69 6f 6e 20 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 20 4c 69 62 20 22 55 52 4c 4d 4f 4e 22 20 28 42 79 56 61 6c 20 } //1 Private Declare PtrSafe Function URLDownloadToFileA Lib "URLMON" (ByVal 
		$a_00_2 = {20 3d 20 4c 65 66 74 28 53 74 72 43 6f 6e 76 28 } //1  = Left(StrConv(
		$a_00_3 = {43 61 6c 6c 20 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 28 } //1 Call URLDownloadToFileA(
		$a_03_4 = {20 3d 20 30 20 54 6f 20 55 42 6f 75 6e 64 28 [0-20] 29 20 2d 20 31 0d 0a 20 20 20 20 20 20 20 20 49 66 20 28 [0-20] 20 4d 6f 64 20 35 20 3d 20 28 } //1
		$a_03_5 = {20 3d 20 45 6e 76 69 72 6f 6e 28 [0-20] 28 [0-01] 90 10 05 00 20 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=6
 
}