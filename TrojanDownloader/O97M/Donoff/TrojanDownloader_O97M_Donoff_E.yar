
rule TrojanDownloader_O97M_Donoff_E{
	meta:
		description = "TrojanDownloader:O97M/Donoff.E,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_00_0 = {55 53 45 22 20 26 20 22 52 50 52 4f 46 49 4c 45 22 } //1 USE" & "RPROFILE"
		$a_00_1 = {73 61 22 20 2b 20 22 76 65 70 22 20 2b 20 22 69 63 22 } //1 sa" + "vep" + "ic"
		$a_00_2 = {27 68 74 27 2b 27 74 70 3a 2f 2f 27 2b 27 27 2b 27 } //1 'ht'+'tp://'+''+'
		$a_00_3 = {28 38 34 29 20 26 20 22 65 6d 22 20 2b 20 22 70 22 } //1 (84) & "em" + "p"
		$a_00_4 = {2e 6a 22 20 26 20 22 70 67 22 } //1 .j" & "pg"
		$a_00_5 = {62 69 6e 2e 62 22 20 2b 20 43 68 72 28 39 37 29 20 2b 20 22 73 65 22 } //1 bin.b" + Chr(97) + "se"
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=5
 
}
rule TrojanDownloader_O97M_Donoff_E_2{
	meta:
		description = "TrojanDownloader:O97M/Donoff.E,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //1 Sub AutoOpen()
		$a_01_1 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 20 30 2c 20 22 68 74 74 70 3a 2f 2f } //1 URLDownloadToFile 0, "http://
		$a_03_2 = {45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 26 20 22 5c [0-08] 2e 65 78 65 } //1
		$a_03_3 = {52 75 6e 46 69 6c 65 28 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 26 20 22 [0-08] 2e 65 78 65 22 2c 20 76 62 48 69 64 65 29 } //1
		$a_01_4 = {53 68 65 6c 6c 20 22 63 6d 64 20 2f 6b 20 22 22 22 20 26 20 73 74 72 46 69 6c 65 20 26 } //1 Shell "cmd /k """ & strFile &
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule TrojanDownloader_O97M_Donoff_E_3{
	meta:
		description = "TrojanDownloader:O97M/Donoff.E,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {22 68 74 74 70 3a 2f 2f [0-30] 2e 65 78 65 22 2c 20 45 6e 76 69 72 6f 6e 28 22 54 4d 50 22 29 20 26 20 22 5c [0-0a] 2e 65 78 65 22 } //1
		$a_03_1 = {3d 20 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 28 30 2c 20 [0-08] 2c 20 [0-08] 2c 20 30 2c 20 30 29 } //1
		$a_03_2 = {3d 20 53 68 65 6c 6c 28 [0-08] 2c 20 31 29 [0-10] 4d 73 67 42 6f 78 20 22 [0-20] 64 6f 63 75 6d 65 6e 74 6f 20 6e 6f 20 65 73 20 63 6f 6d 70 61 74 69 62 6c 65 20 63 6f 6e 20 65 73 74 65 20 65 71 75 69 70 6f 2e 22 } //1
		$a_01_3 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 44 69 73 70 6c 61 79 41 6c 65 72 74 73 20 3d 20 46 61 6c 73 65 } //1 Application.DisplayAlerts = False
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}