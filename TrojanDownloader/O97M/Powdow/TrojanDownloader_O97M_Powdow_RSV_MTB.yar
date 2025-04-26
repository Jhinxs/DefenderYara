
rule TrojanDownloader_O97M_Powdow_RSV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RSV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_00_0 = {53 65 72 76 69 63 65 2e 47 65 74 28 22 57 69 6e 33 32 5f 50 72 22 20 2b 20 22 6f 63 65 73 73 22 29 } //1 Service.Get("Win32_Pr" + "ocess")
		$a_00_1 = {6e 65 77 3a 30 44 34 33 46 45 30 31 2d } //1 new:0D43FE01-
		$a_00_2 = {74 65 6d 70 70 61 74 68 20 3d 20 22 43 3a 5c 5c 50 72 6f 67 72 61 6d 44 61 74 61 22 20 2b 20 22 5c 5c 7a 75 62 69 7a 75 72 75 2e 65 78 65 22 } //1 temppath = "C:\\ProgramData" + "\\zubizuru.exe"
		$a_00_3 = {24 70 72 6f 66 69 6c 65 20 3d 20 24 65 6e 76 3a 74 65 6d 70 2b 27 5c 7a 75 72 75 62 61 74 65 73 74 69 6e 67 27 } //1 $profile = $env:temp+'\zurubatesting'
		$a_02_4 = {22 70 6f 77 22 0d 0a [0-0a] 20 3d 20 22 65 72 73 68 65 22 0d 0a [0-0a] 20 3d 20 22 6c 6c 2e 65 78 65 22 } //1
		$a_00_5 = {65 72 72 52 65 74 75 72 6e 20 3d 20 50 72 6f 63 65 73 73 2e 43 72 65 61 74 65 28 52 75 6e 50 61 74 68 2c 20 4e 75 6c 6c 2c 20 6f 62 6a 43 6f 6e 66 69 67 2c 20 50 72 6f 63 65 73 73 49 44 29 } //1 errReturn = Process.Create(RunPath, Null, objConfig, ProcessID)
		$a_02_6 = {70 73 68 65 6c 6c 50 61 74 68 20 3d 20 22 43 3a 5c 5c 57 69 6e 64 6f 77 73 5c 5c 53 79 73 74 65 6d 33 32 5c 5c 22 20 [0-0d] 20 22 5c 5c 76 31 2e 30 5c 5c 22 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*1+(#a_00_5  & 1)*1+(#a_02_6  & 1)*1) >=7
 
}