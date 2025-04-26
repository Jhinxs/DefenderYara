
rule TrojanDownloader_O97M_Powdow_RVBT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RVBT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {67 6d 61 64 67 62 72 61 67 75 61 62 71 61 75 61 67 75 61 65 61 62 6c 61 63 69 61 6b 71 61 3d 22 73 68 65 6c 6c 28 22 70 6f 77 65 72 73 68 65 6c 6c 2e 65 78 65 22 26 78 29 65 6e 64 73 75 62 } //1 gmadgbraguabqauaguaeablaciakqa="shell("powershell.exe"&x)endsub
		$a_01_1 = {61 75 74 6f 5f 6f 70 65 6e 28 29 64 69 6d 78 78 3d 22 70 6f 77 65 72 73 68 65 6c 6c 2d 77 69 6e 64 6f 77 68 69 64 64 65 6e 2d 65 6e 63 6b 61 62 6f 61 67 75 61 64 77 61 74 61 65 38 61 79 67 62 71 61 67 75 61 79 77 62 30 61 } //1 auto_open()dimxx="powershell-windowhidden-enckaboaguadwatae8aygbqaguaywb0a
		$a_01_2 = {64 6f 63 75 6d 65 6e 74 5f 6f 70 65 6e 28 29 61 75 74 6f 5f 6f 70 65 6e 65 6e 64 73 75 62 } //1 document_open()auto_openendsub
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Powdow_RVBT_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RVBT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 68 65 6c 6c 20 22 63 6d 64 2e 65 78 65 20 2f 63 20 22 20 2b 20 64 65 66 44 69 72 2c 20 76 62 4e 6f 72 6d 61 6c 4e 6f 46 6f 63 75 73 } //1 Shell "cmd.exe /c " + defDir, vbNormalNoFocus
		$a_01_1 = {45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 2b 20 22 5c 66 69 6c 65 44 6f 77 6e 6c 6f 61 64 65 72 2e 65 78 65 22 } //1 Environ("TEMP") + "\fileDownloader.exe"
		$a_01_2 = {63 6d 64 2e 65 78 65 20 2f 63 20 63 75 72 6c 20 22 20 2b 20 65 78 65 55 72 6c 20 2b 20 22 20 2d 2d 6f 75 74 70 75 74 20 22 20 2b 20 64 65 66 44 69 72 } //1 cmd.exe /c curl " + exeUrl + " --output " + defDir
		$a_01_3 = {57 6f 72 6b 73 68 65 65 74 73 28 22 53 68 65 65 74 31 22 29 2e 43 65 6c 6c 73 28 31 30 30 30 31 2c 20 31 29 2e 56 61 6c 75 65 } //1 Worksheets("Sheet1").Cells(10001, 1).Value
		$a_01_4 = {52 65 70 6c 61 63 65 28 65 78 65 55 72 6c 2c 20 22 26 22 2c 20 22 5e 26 22 29 } //1 Replace(exeUrl, "&", "^&")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}