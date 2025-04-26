
rule TrojanDownloader_O97M_Obfuse_BKQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.BKQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {61 63 63 65 73 73 50 6f 70 45 61 72 74 68 2e 72 75 6e 20 65 78 63 65 6c 48 69 70 45 78 63 65 6c } //1 accessPopEarth.run excelHipExcel
		$a_01_1 = {4f 70 65 6e 20 22 22 20 26 20 65 78 63 65 6c 48 69 70 45 78 63 65 6c 20 26 20 22 22 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 } //1 Open "" & excelHipExcel & "" For Output As #1
		$a_01_2 = {2e 6d 69 63 72 6f 73 6f 66 74 48 6f 70 52 6f 63 6b 20 6f 66 66 69 63 65 45 78 63 65 6c 4f 66 66 69 63 65 20 26 20 22 2e 2e 2e 2e 2e 68 74 61 2e 22 2c 20 52 65 70 6c 61 63 65 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 52 61 6e 67 65 2e 54 65 78 74 2c 20 22 26 6c 74 3b 22 2c 20 22 22 29 } //1 .microsoftHopRock officeExcelOffice & ".....hta.", Replace(ActiveDocument.Range.Text, "&lt;", "")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}