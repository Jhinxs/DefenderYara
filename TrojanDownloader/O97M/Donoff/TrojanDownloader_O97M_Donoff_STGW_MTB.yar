
rule TrojanDownloader_O97M_Donoff_STGW_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.STGW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {66 73 2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 22 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 63 61 6c 63 2e 62 61 74 22 2c 20 54 72 75 65 29 } //1 fs.CreateTextFile("C:\Users\Public\calc.bat", True)
		$a_01_1 = {28 53 74 72 52 65 76 65 72 73 65 28 22 22 22 6c 6d 74 68 2e 6c 6d 74 68 2f 72 62 2e 6d 6f 63 2e 78 74 65 6e 79 6b 73 2f 2f 3a 73 70 74 74 68 22 22 20 61 74 68 73 6d 22 29 29 } //1 (StrReverse("""lmth.lmth/rb.moc.xtenyks//:sptth"" athsm"))
		$a_01_2 = {53 68 65 6c 6c 20 57 6f 72 6b 73 68 65 65 74 73 28 22 43 44 54 22 29 2e 52 61 6e 67 65 28 22 42 31 33 22 29 } //1 Shell Worksheets("CDT").Range("B13")
		$a_01_3 = {53 68 65 6c 6c 20 57 6f 72 6b 73 68 65 65 74 73 28 22 43 44 54 22 29 2e 52 61 6e 67 65 28 22 4a 31 39 33 22 29 } //1 Shell Worksheets("CDT").Range("J193")
		$a_01_4 = {53 68 65 6c 6c 20 57 6f 72 6b 73 68 65 65 74 73 28 22 43 44 54 22 29 2e 52 61 6e 67 65 28 22 44 31 31 35 22 29 } //1 Shell Worksheets("CDT").Range("D115")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}