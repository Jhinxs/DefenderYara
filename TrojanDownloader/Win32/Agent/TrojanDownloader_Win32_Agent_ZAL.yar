
rule TrojanDownloader_Win32_Agent_ZAL{
	meta:
		description = "TrojanDownloader:Win32/Agent.ZAL,SIGNATURE_TYPE_PEHSTR,09 00 06 00 04 00 00 "
		
	strings :
		$a_01_0 = {6e 6f 74 65 70 6f 64 2e 65 78 65 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 00 00 43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 72 73 76 70 2e 65 78 65 } //3
		$a_01_1 = {22 43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 6e 6f 74 65 70 6f 64 2e 65 78 65 22 20 22 25 31 22 } //2 "C:\WINDOWS\SYSTEM32\notepod.exe" "%1"
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 46 69 6c 65 45 78 74 73 5c 2e 74 78 74 } //2 Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.txt
		$a_01_3 = {7b 39 39 30 42 37 37 30 44 2d 36 32 41 45 2d 35 34 32 31 2d 44 41 36 44 2d 31 36 30 33 33 42 37 36 32 35 38 43 7d } //2 {990B770D-62AE-5421-DA6D-16033B76258C}
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2) >=6
 
}