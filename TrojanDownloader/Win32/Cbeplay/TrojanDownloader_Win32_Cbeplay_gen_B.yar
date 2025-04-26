
rule TrojanDownloader_Win32_Cbeplay_gen_B{
	meta:
		description = "TrojanDownloader:Win32/Cbeplay.gen!B,SIGNATURE_TYPE_PEHSTR,3a 00 3a 00 0e 00 00 "
		
	strings :
		$a_01_0 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 43 00 6f 00 72 00 70 00 6f 00 72 00 61 00 74 00 69 00 6f 00 6e 00 } //10 Microsoft Corporation
		$a_01_1 = {4d 69 63 72 6f 73 6f 66 74 20 56 69 73 75 61 6c 20 43 2b 2b 20 52 75 6e 74 69 6d 65 20 4c 69 62 72 61 72 79 } //10 Microsoft Visual C++ Runtime Library
		$a_01_2 = {44 37 45 42 36 30 38 35 2d 45 37 30 41 2d 34 66 35 61 2d 39 39 32 31 2d 45 36 42 44 32 34 34 41 38 43 31 37 } //10 D7EB6085-E70A-4f5a-9921-E6BD244A8C17
		$a_01_3 = {63 00 61 00 6e 00 74 00 61 00 6e 00 64 00 6f 00 63 00 6f 00 6e 00 61 00 64 00 72 00 69 00 61 00 6e 00 61 00 2e 00 63 00 6f 00 6d 00 } //10 cantandoconadriana.com
		$a_01_4 = {25 53 79 73 74 65 6d 52 6f 6f 74 25 5c 53 79 73 74 65 6d 33 32 5c 43 62 45 76 74 53 76 63 2e 65 78 65 20 2d 6b 20 6e 65 74 73 76 63 73 } //10 %SystemRoot%\System32\CbEvtSvc.exe -k netsvcs
		$a_01_5 = {25 73 5c 25 64 2e 65 78 65 } //1 %s\%d.exe
		$a_01_6 = {65 78 70 6c 6f 72 65 72 2e 65 78 65 } //1 explorer.exe
		$a_01_7 = {43 62 45 76 74 53 76 63 2e 65 78 65 } //1 CbEvtSvc.exe
		$a_01_8 = {57 69 6e 48 74 74 70 4f 70 65 6e } //1 WinHttpOpen
		$a_01_9 = {57 69 6e 48 74 74 70 43 6f 6e 6e 65 63 74 } //1 WinHttpConnect
		$a_01_10 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
		$a_01_11 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //1 CreateToolhelp32Snapshot
		$a_01_12 = {6e 00 65 00 74 00 73 00 76 00 63 00 73 00 } //1 netsvcs
		$a_01_13 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 43 62 45 76 74 53 76 63 } //1 SYSTEM\CurrentControlSet\Services\CbEvtSvc
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1) >=58
 
}