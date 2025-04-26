
rule TrojanDownloader_O97M_Obfuse_SH_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.SH!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {27 4d 73 67 42 6f 78 27 4d 73 67 42 6f 78 27 4d 73 67 42 6f 78 27 4d 73 67 42 6f 78 27 4d 73 67 42 6f 78 27 4d 73 67 42 6f 78 27 4d 73 67 42 6f 78 } //1 'MsgBox'MsgBox'MsgBox'MsgBox'MsgBox'MsgBox'MsgBox
		$a_01_1 = {77 73 68 2e 45 78 65 63 20 28 53 74 72 52 65 76 65 72 73 65 28 53 74 72 29 29 } //1 wsh.Exec (StrReverse(Str))
		$a_01_2 = {57 6f 72 6b 73 68 65 65 74 73 28 31 29 2e 41 63 74 69 76 61 74 65 } //1 Worksheets(1).Activate
		$a_01_3 = {53 65 74 20 77 73 68 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //1 Set wsh = CreateObject("WScript.Shell")
		$a_03_4 = {3d 20 52 61 6e 67 65 28 22 [0-02] 22 29 2e 43 6f 6d 6d 65 6e 74 2e 54 65 78 74 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}
rule TrojanDownloader_O97M_Obfuse_SH_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.SH!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 61 76 65 54 6f 46 69 6c 65 20 73 74 72 4d 61 6c 77 61 72 65 46 6f 6c 64 65 72 20 26 20 22 5c 22 20 26 20 73 74 72 4d 61 6c 77 61 72 65 46 69 6c 65 6e 61 6d 65 2c } //1 SaveToFile strMalwareFolder & "\" & strMalwareFilename,
		$a_01_1 = {2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 73 74 72 4d 61 6c 77 61 72 65 55 72 6c 2c 20 46 61 6c 73 65 } //1 .Open "GET", strMalwareUrl, False
		$a_01_2 = {73 74 72 4d 61 6c 77 61 72 65 58 6f 72 4b 65 79 20 3d 20 6d 61 6c 77 61 72 65 73 58 6f 72 4b 65 79 52 61 6e 67 65 2e 56 61 6c 75 65 } //1 strMalwareXorKey = malwaresXorKeyRange.Value
		$a_01_3 = {73 74 72 4d 61 6c 77 61 72 65 55 72 6c 20 3d 20 58 6f 72 49 74 28 } //1 strMalwareUrl = XorIt(
		$a_01_4 = {43 61 6c 6c 20 53 68 65 6c 6c 28 73 74 72 4d 61 6c 77 61 72 65 46 6f 6c 64 65 72 20 26 20 22 5c 22 20 26 20 73 74 72 4d 61 6c 77 61 72 65 46 69 6c 65 6e 61 6d 65 29 } //1 Call Shell(strMalwareFolder & "\" & strMalwareFilename)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}