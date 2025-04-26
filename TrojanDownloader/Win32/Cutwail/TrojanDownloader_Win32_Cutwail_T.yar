
rule TrojanDownloader_Win32_Cutwail_T{
	meta:
		description = "TrojanDownloader:Win32/Cutwail.T,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {41 63 63 65 70 74 3a 20 69 6d 61 67 65 2f 67 69 66 2c 20 69 6d 61 67 65 2f 78 2d 78 62 69 74 6d 61 70 2c 20 69 6d 61 67 65 2f 6a 70 65 67 2c 20 69 6d 61 67 65 2f 70 6a 70 65 67 2c 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 78 2d 73 68 6f 63 6b 77 61 76 65 2d 66 6c 61 73 68 2c 20 2a 2f 2a } //1 Accept: image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, application/x-shockwave-flash, */*
		$a_00_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_2 = {47 45 54 20 2f 6e 65 77 66 6f 72 75 6d 2f 69 6e 64 65 78 2e 70 68 70 20 48 54 54 50 2f 31 2e 31 } //1 GET /newforum/index.php HTTP/1.1
		$a_01_3 = {2f 6e 65 77 66 6f 72 75 6d 2f 73 65 61 72 63 68 2e 70 68 70 } //1 /newforum/search.php
		$a_01_4 = {47 6c 6f 63 6b 20 53 75 69 74 65 } //1 Glock Suite
		$a_01_5 = {5c 67 6c 6f 63 6b 33 32 2e 65 78 65 } //1 \glock32.exe
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}