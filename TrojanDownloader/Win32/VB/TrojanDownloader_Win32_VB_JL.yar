
rule TrojanDownloader_Win32_VB_JL{
	meta:
		description = "TrojanDownloader:Win32/VB.JL,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
		$a_02_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 [0-a0] 2e 00 65 00 78 00 65 00 00 } //1
		$a_00_2 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 61 00 74 00 74 00 72 00 69 00 62 00 20 00 2b 00 73 00 20 00 2b 00 68 00 20 00 43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 } //1 cmd /c attrib +s +h C:\Windows
		$a_00_3 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 } //1 autorun
		$a_00_4 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 2e 00 45 00 58 00 45 00 } //1 C:\WINDOWS.EXE
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}