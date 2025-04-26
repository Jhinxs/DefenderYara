
rule TrojanDownloader_O97M_Dridex_STRC_MTB{
	meta:
		description = "TrojanDownloader:O97M/Dridex.STRC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {67 65 74 53 65 6c 65 63 74 39 36 32 36 20 3d 20 45 6e 76 69 72 6f 6e 28 43 65 6c 6c 73 28 31 33 37 2c 20 31 31 37 29 29 20 26 20 43 65 6c 6c 73 28 31 34 35 2c 20 37 31 29 } //1 getSelect9626 = Environ(Cells(137, 117)) & Cells(145, 71)
		$a_01_1 = {46 6f 72 20 45 61 63 68 20 67 65 74 50 61 72 61 6d 54 79 70 65 4c 6f 6e 67 56 61 72 43 68 61 72 31 37 30 35 20 49 6e 20 41 63 74 69 76 65 57 6f 72 6b 62 6f 6f 6b 2e 53 68 65 65 74 73 28 43 53 74 72 28 43 65 6c 6c 73 28 31 34 34 2c 20 31 31 31 29 29 29 2e 52 61 6e 67 65 28 43 53 74 72 28 43 65 6c 6c 73 28 38 30 2c 20 31 35 36 29 29 29 } //1 For Each getParamTypeLongVarChar1705 In ActiveWorkbook.Sheets(CStr(Cells(144, 111))).Range(CStr(Cells(80, 156)))
		$a_01_2 = {57 69 74 68 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 43 65 6c 6c 73 28 31 31 31 2c 20 31 34 32 29 29 } //1 With CreateObject(Cells(111, 142))
		$a_01_3 = {26 20 43 68 72 28 52 6f 75 6e 64 28 67 65 74 50 61 72 61 6d 54 79 70 65 4c 6f 6e 67 56 61 72 43 68 61 72 31 37 30 35 2e 56 61 6c 75 65 29 29 } //1 & Chr(Round(getParamTypeLongVarChar1705.Value))
		$a_01_4 = {2e 45 78 65 63 20 43 65 6c 6c 73 28 38 30 2c 20 31 30 37 29 20 26 20 67 65 74 53 65 6c 65 63 74 39 36 32 36 } //1 .Exec Cells(80, 107) & getSelect9626
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}