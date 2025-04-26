
rule TrojanDownloader_O97M_Bartallex_AA{
	meta:
		description = "TrojanDownloader:O97M/Bartallex.AA,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {20 3d 20 41 72 72 61 79 28 90 05 03 0b 31 32 33 34 35 36 37 38 39 30 2d 2c 20 90 05 03 0b 31 32 33 34 35 36 37 38 39 30 2d 2c 20 90 05 03 0b 31 32 33 34 35 36 37 38 39 30 2d } //1
		$a_01_1 = {52 75 6e 53 74 75 66 66 28 73 4e 75 6c 6c 2c 20 73 50 72 6f 63 2c } //1 RunStuff(sNull, sProc,
		$a_01_2 = {73 50 72 6f 63 20 3d 20 45 6e 76 69 72 6f 6e 28 22 77 69 6e 64 69 72 22 29 20 26 20 22 5c 5c 53 79 73 57 4f 57 36 34 5c 5c 72 75 6e 64 6c 6c 33 32 2e 65 78 65 } //1 sProc = Environ("windir") & "\\SysWOW64\\rundll32.exe
		$a_01_3 = {72 77 78 70 61 67 65 20 3d 20 41 6c 6c 6f 63 53 74 75 66 66 28 70 49 6e 66 6f 2e 68 50 72 6f 63 65 73 73 2c 20 30 2c 20 55 42 6f 75 6e 64 28 6d 79 41 72 72 61 79 29 2c 20 26 48 31 30 30 30 2c 20 26 48 34 30 29 } //1 rwxpage = AllocStuff(pInfo.hProcess, 0, UBound(myArray), &H1000, &H40)
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule TrojanDownloader_O97M_Bartallex_AA_2{
	meta:
		description = "TrojanDownloader:O97M/Bartallex.AA,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {41 6c 69 61 73 20 22 43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 22 } //1 Alias "CreateRemoteThread"
		$a_01_1 = {41 6c 69 61 73 20 22 56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 22 } //1 Alias "VirtualAllocEx"
		$a_01_2 = {41 6c 69 61 73 20 22 57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 22 } //1 Alias "WriteProcessMemory"
		$a_01_3 = {41 6c 69 61 73 20 22 43 72 65 61 74 65 50 72 6f 63 65 73 73 41 22 } //1 Alias "CreateProcessA"
		$a_01_4 = {26 20 22 5c 5c 53 79 73 74 65 6d 33 32 5c 5c 72 75 6e 64 6c 6c 33 32 2e 65 78 65 22 } //1 & "\\System32\\rundll32.exe"
		$a_01_5 = {2e 68 50 72 6f 63 65 73 73 2c 20 30 2c 20 } //1 .hProcess, 0, 
		$a_03_6 = {20 3d 20 41 72 72 61 79 28 90 05 03 0b 31 32 33 34 35 36 37 38 39 30 2d 2c 20 90 05 03 0b 31 32 33 34 35 36 37 38 39 30 2d 2c 20 90 05 03 0b 31 32 33 34 35 36 37 38 39 30 2d } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_03_6  & 1)*1) >=7
 
}