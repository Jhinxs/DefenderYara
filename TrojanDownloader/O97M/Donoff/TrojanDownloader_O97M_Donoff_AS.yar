
rule TrojanDownloader_O97M_Donoff_AS{
	meta:
		description = "TrojanDownloader:O97M/Donoff.AS,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {4c 69 62 20 22 75 72 6c 6d 6f 6e 22 20 41 6c 69 61 73 20 22 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 57 22 20 28 42 79 56 61 6c } //1 Lib "urlmon" Alias "URLDownloadToFileW" (ByVal
		$a_01_1 = {4c 69 62 20 22 73 68 65 6c 6c 33 32 2e 64 6c 6c 22 20 41 6c 69 61 73 20 22 53 68 65 6c 6c 45 78 65 63 75 74 65 57 22 20 28 42 79 56 61 6c } //1 Lib "shell32.dll" Alias "ShellExecuteW" (ByVal
		$a_03_2 = {3d 20 22 68 74 74 70 3a 2f 2f [0-18] 2f [0-30] 2e 65 78 65 22 } //1
		$a_03_3 = {3d 20 45 6e 76 69 72 6f 6e 28 22 [0-10] 22 29 20 26 20 22 5c [0-10] 2e 65 78 65 22 } //1
		$a_01_4 = {28 30 2c 20 53 74 72 50 74 72 28 22 4f 70 65 6e 22 29 2c } //1 (0, StrPtr("Open"),
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}