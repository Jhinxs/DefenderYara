
rule TrojanDownloader_Win32_Banload_ZBV{
	meta:
		description = "TrojanDownloader:Win32/Banload.ZBV,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 05 00 00 "
		
	strings :
		$a_03_0 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 65 74 75 70 2e 69 6e 69 [0-05] 68 74 74 70 3a 2f 2f 77 77 77 2e 77 65 62 66 6c 6f 72 61 2e 63 6f 2e 6b 72 2f 73 6c 6f 67 2f 73 6b 69 6e 2f 73 65 74 75 70 2e 69 6e 69 } //2
		$a_01_1 = {44 6f 63 75 6d 65 6e 74 73 20 61 6e 64 20 53 65 74 74 69 6e 67 73 5c 41 6c 6c 20 55 73 65 72 73 5c 73 74 61 72 74 20 6d 65 6e 75 5c 70 72 6f 67 72 61 6d 73 5c 73 74 61 72 74 75 70 5c 77 69 6e 73 79 73 33 2e 65 78 65 } //2 Documents and Settings\All Users\start menu\programs\startup\winsys3.exe
		$a_01_2 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 77 69 6e 73 79 73 33 2e 65 78 65 00 00 57 69 6e 64 6f 77 73 20 58 50 00 00 57 69 6e 64 6f 77 73 20 32 30 30 30 } //2
		$a_01_3 = {49 6e 74 65 72 6e 65 74 47 65 74 43 6f 6e 6e 65 63 74 65 64 53 74 61 74 65 } //1 InternetGetConnectedState
		$a_01_4 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=6
 
}