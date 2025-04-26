
rule TrojanDownloader_Win32_Delf_IL{
	meta:
		description = "TrojanDownloader:Win32/Delf.IL,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {47 6c 6f 62 61 6c 5c } //1 Global\
		$a_02_1 = {63 6d 64 2e 65 78 65 20 2f 43 20 22 63 64 20 25 [0-a0] 26 26 20 64 65 6c 20 72 65 61 64 65 72 5f 73 2e 65 78 65 } //1
		$a_00_2 = {68 74 74 70 3a 2f 2f 32 31 36 2e 36 2e 32 33 35 2e 32 33 35 2f 6e 64 69 73 2f } //1 http://216.6.235.235/ndis/
		$a_00_3 = {6e 65 74 20 73 74 6f 70 20 22 53 79 73 74 65 6d 20 52 65 73 74 6f 72 65 20 53 65 72 76 69 63 65 22 } //1 net stop "System Restore Service"
		$a_00_4 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
		$a_00_5 = {43 72 65 61 74 65 4d 75 74 65 78 41 } //1 CreateMutexA
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}