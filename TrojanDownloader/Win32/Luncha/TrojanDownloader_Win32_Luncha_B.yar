
rule TrojanDownloader_Win32_Luncha_B{
	meta:
		description = "TrojanDownloader:Win32/Luncha.B,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {4d 53 56 43 50 36 30 2e 64 6c 6c } //1 MSVCP60.dll
		$a_01_1 = {61 6c 62 61 6e 69 61 2e 35 35 36 36 37 37 38 38 39 39 30 30 2e 63 6f 6d } //1 albania.556677889900.com
		$a_01_2 = {6c 6f 67 2d 62 69 6e 2f 6c 75 6e 63 68 5f 6c 6f 61 64 2e 70 68 70 } //1 log-bin/lunch_load.php
		$a_01_3 = {6d 6f 64 75 6c 65 2d 62 69 6e 2f 63 6f 6e 66 2f 6c 75 6e 63 68 5f 78 6d 6c 2e 70 68 70 } //1 module-bin/conf/lunch_xml.php
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_5 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //1 InternetReadFile
		$a_01_6 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1 InternetOpenUrlA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}