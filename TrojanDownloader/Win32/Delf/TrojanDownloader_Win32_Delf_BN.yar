
rule TrojanDownloader_Win32_Delf_BN{
	meta:
		description = "TrojanDownloader:Win32/Delf.BN,SIGNATURE_TYPE_PEHSTR,32 00 32 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 42 6f 72 6c 61 6e 64 5c 4c 6f 63 61 6c 65 73 } //10 Software\Borland\Locales
		$a_01_1 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //10 URLDownloadToFileA
		$a_01_2 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //10 WriteProcessMemory
		$a_01_3 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 43 00 6f 00 72 00 70 00 6f 00 72 00 61 00 74 00 69 00 6f 00 6e 00 } //10 Microsoft Corporation
		$a_01_4 = {25 53 79 73 74 65 6d 52 6f 6f 74 25 5c 53 79 73 74 65 6d 33 32 5c 73 76 63 68 6f 73 74 2e 65 78 65 20 2d 6b 20 77 6e 74 74 65 63 68 } //10 %SystemRoot%\System32\svchost.exe -k wnttech
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10) >=50
 
}