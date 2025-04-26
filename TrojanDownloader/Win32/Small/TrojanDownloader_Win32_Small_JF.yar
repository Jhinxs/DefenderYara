
rule TrojanDownloader_Win32_Small_JF{
	meta:
		description = "TrojanDownloader:Win32/Small.JF,SIGNATURE_TYPE_PEHSTR,ffffff8c 00 ffffff82 00 0c 00 00 "
		
	strings :
		$a_01_0 = {47 65 74 53 79 73 74 65 6d 44 69 72 65 63 74 6f 72 79 41 } //20 GetSystemDirectoryA
		$a_01_1 = {43 72 65 61 74 65 46 69 6c 65 41 } //20 CreateFileA
		$a_01_2 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //20 URLDownloadToFileA
		$a_01_3 = {57 69 6e 45 78 65 63 } //20 WinExec
		$a_01_4 = {25 73 5c 75 70 64 61 74 61 78 2e 65 78 65 } //20 %s\updatax.exe
		$a_01_5 = {48 44 44 47 75 61 72 64 2e 64 6c 6c } //20 HDDGuard.dll
		$a_01_6 = {4b 76 54 72 75 73 74 2e 64 6c 6c } //5 KvTrust.dll
		$a_01_7 = {55 72 6c 47 75 61 72 64 2e 64 6c 6c } //5 UrlGuard.dll
		$a_01_8 = {61 6e 74 69 73 70 79 2e 64 6c 6c } //5 antispy.dll
		$a_01_9 = {73 61 66 65 6d 6f 6e 2e 64 6c 6c } //5 safemon.dll
		$a_01_10 = {69 65 70 72 6f 74 2e 64 6c 6c } //5 ieprot.dll
		$a_01_11 = {83 c4 1c 85 c0 74 7e 8d 85 dc fd ff ff 50 ff 75 f0 e8 ad 00 00 00 59 85 c0 59 75 69 ff 75 f0 ff 15 10 20 00 10 3d 00 c7 00 00 7d 59 8d 85 dc fd ff ff 50 ff 75 f0 ff 15 30 20 00 10 ff 75 f4 8d 85 d0 fa ff ff 50 8d 85 d8 fc ff ff 68 38 30 00 10 50 ff d6 8d 85 d8 fc ff ff 50 8d 85 dc fd ff ff 50 e8 3b 00 00 00 83 c4 18 85 c0 75 17 8d 85 d8 fc ff ff 6a 05 50 ff 15 1c 20 00 10 60 90 b8 03 00 00 00 61 ff 45 f4 83 7d f4 64 0f 8e 3e ff ff ff 68 c0 27 09 00 ff 15 24 20 00 10 e9 } //20
	condition:
		((#a_01_0  & 1)*20+(#a_01_1  & 1)*20+(#a_01_2  & 1)*20+(#a_01_3  & 1)*20+(#a_01_4  & 1)*20+(#a_01_5  & 1)*20+(#a_01_6  & 1)*5+(#a_01_7  & 1)*5+(#a_01_8  & 1)*5+(#a_01_9  & 1)*5+(#a_01_10  & 1)*5+(#a_01_11  & 1)*20) >=130
 
}