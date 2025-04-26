
rule TrojanDownloader_O97M_Donoff_ED{
	meta:
		description = "TrojanDownloader:O97M/Donoff.ED,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 03 00 05 00 00 "
		
	strings :
		$a_00_0 = {29 2c 20 45 6e 76 69 72 6f 6e 28 41 72 72 61 79 28 } //1 ), Environ(Array(
		$a_00_1 = {3d 20 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 28 30 2c 20 41 72 72 61 79 28 } //1 = URLDownloadToFileA(0, Array(
		$a_00_2 = {3d 20 41 72 72 61 79 28 57 69 6e 45 78 65 63 28 41 72 72 61 79 28 } //1 = Array(WinExec(Array(
		$a_00_3 = {50 72 69 76 61 74 65 20 44 65 63 6c 61 72 65 20 50 74 72 53 61 66 65 20 46 75 6e 63 74 69 6f 6e 20 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 20 4c 69 62 20 22 75 72 6c 6d 6f 6e 22 20 28 42 79 56 61 6c } //1 Private Declare PtrSafe Function URLDownloadToFileA Lib "urlmon" (ByVal
		$a_00_4 = {50 72 69 76 61 74 65 20 44 65 63 6c 61 72 65 20 50 74 72 53 61 66 65 20 46 75 6e 63 74 69 6f 6e 20 57 69 6e 45 78 65 63 20 4c 69 62 20 22 6b 65 72 6e 65 6c 33 32 22 20 28 42 79 56 61 6c } //1 Private Declare PtrSafe Function WinExec Lib "kernel32" (ByVal
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=3
 
}