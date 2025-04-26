
rule TrojanDownloader_Win32_Agent_OO{
	meta:
		description = "TrojanDownloader:Win32/Agent.OO,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 0a 00 00 "
		
	strings :
		$a_02_0 = {83 c3 68 89 d8 e8 ?? ?? ?? 00 ff 35 ?? ?? ?? 00 8b 1d ?? ?? ?? 00 83 c3 74 89 d8 e8 ?? ?? ?? 00 58 ff 35 ?? ?? ?? 00 8b 1d ?? ?? ?? 00 83 c3 74 89 d8 e8 ?? ?? ?? 00 58 ff 35 ?? ?? ?? 00 8b 1d ?? ?? ?? 00 83 c3 70 89 d8 e8 ?? ?? ?? 00 58 ff 35 ?? ?? ?? 00 8b 1d ?? ?? ?? 00 83 c3 3a } //10
		$a_00_1 = {65 63 73 64 66 67 61 6c 63 6c 64 6c 62 6c 61 68 63 68 64 68 62 68 61 78 63 78 64 78 62 78 73 70 62 70 73 69 64 69 62 78 2b 73 69 } //1 ecsdfgalcldlblahchdhbhaxcxdxbxspbpsidibx+si
		$a_00_2 = {5c 00 7c 00 64 00 69 00 6d 00 20 00 6e 00 61 00 76 00 28 00 29 00 57 00 65 00 62 00 77 00 52 00 73 00 75 00 6c 00 74 00 6f 00 53 00 3d 00 43 00 72 00 4f 00 6a 00 63 00 22 00 68 00 2e 00 41 00 70 00 46 00 55 00 78 00 } //1 \|dim nav()WebwRsultoS=CrOjc"h.ApFUx
		$a_00_3 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_00_4 = {68 74 74 70 3a 2f 2f 77 77 77 2e 69 70 32 6c 6f 63 61 74 69 6f 6e 2e 63 6f 6d 2f } //1 http://www.ip2location.com/
		$a_01_5 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1 InternetOpenUrlA
		$a_00_6 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
		$a_00_7 = {53 68 65 6c 6c 45 78 65 63 75 74 65 45 78 41 } //1 ShellExecuteExA
		$a_00_8 = {63 6f 6d 73 70 65 63 } //1 comspec
		$a_00_9 = {2f 63 20 64 65 6c 20 22 } //1 /c del "
	condition:
		((#a_02_0  & 1)*10+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_01_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1) >=19
 
}