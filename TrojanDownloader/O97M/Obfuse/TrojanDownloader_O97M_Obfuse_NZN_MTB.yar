
rule TrojanDownloader_O97M_Obfuse_NZN_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.NZN!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {50 72 69 76 61 74 65 20 44 65 63 6c 61 72 65 20 46 75 6e 63 74 69 6f 6e 20 45 5f 50 72 69 63 65 5f 41 20 4c 69 62 20 22 75 72 6c 6d 6f 6e 22 20 5f } //1 Private Declare Function E_Price_A Lib "urlmon" _
		$a_01_1 = {41 6c 69 61 73 20 22 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 22 20 28 20 5f } //1 Alias "URLDownloadToFileA" ( _
		$a_01_2 = {28 53 70 6c 69 74 28 6b 69 6a 28 30 29 2c 20 6f 76 65 72 64 75 65 5f 31 28 4f 61 29 29 29 2c 20 64 69 72 65 63 74 6f 6f 20 26 20 22 5c 22 20 26 20 66 69 6c 6c 65 6e 61 6d 65 2c 20 30 2c 20 30 } //1 (Split(kij(0), overdue_1(Oa))), directoo & "\" & fillename, 0, 0
		$a_01_3 = {53 75 62 20 66 72 65 69 67 68 74 5f 31 28 29 } //1 Sub freight_1()
		$a_01_4 = {53 70 6c 69 74 28 53 74 72 43 6f 6e 76 28 6d 2c 20 36 34 29 2c 20 43 68 72 28 30 29 29 3a 20 46 6f 72 20 45 61 63 68 20 76 76 31 20 49 6e 20 76 31 3a 20 4f 6e 20 45 72 72 6f 72 20 52 65 73 75 6d 65 20 4e 65 78 74 3a 20 6b 20 3d 20 6b 20 26 20 43 68 72 28 41 73 63 28 76 76 31 29 20 2b 20 6a 6a 29 } //1 Split(StrConv(m, 64), Chr(0)): For Each vv1 In v1: On Error Resume Next: k = k & Chr(Asc(vv1) + jj)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}