
rule TrojanDownloader_Win32_Cjfee_A{
	meta:
		description = "TrojanDownloader:Win32/Cjfee.A,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {62 6f 74 2e 63 6a 66 65 65 64 73 2e 63 6f 6d 2f 74 61 73 6b 73 2e 70 68 70 3f 63 6a 3d 25 73 26 64 6f 6d 61 69 6e 3d 25 73 26 76 3d } //1 bot.cjfeeds.com/tasks.php?cj=%s&domain=%s&v=
		$a_01_1 = {63 6a 62 5c 63 6a 62 38 2e 65 78 65 } //1 cjb\cjb8.exe
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_3 = {49 6e 74 65 72 6e 65 74 43 72 61 63 6b 55 72 6c 41 } //1 InternetCrackUrlA
		$a_01_4 = {43 72 65 61 74 65 44 69 72 65 63 74 6f 72 79 41 } //1 CreateDirectoryA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}