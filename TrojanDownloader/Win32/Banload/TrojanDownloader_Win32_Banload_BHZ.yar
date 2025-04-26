
rule TrojanDownloader_Win32_Banload_BHZ{
	meta:
		description = "TrojanDownloader:Win32/Banload.BHZ,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 31 00 38 00 35 00 2e 00 33 00 35 00 2e 00 31 00 33 00 39 00 2e 00 31 00 39 00 30 00 2f 00 58 00 2f 00 34 00 2f 00 69 00 6e 00 64 00 65 00 78 00 33 00 2e 00 70 00 68 00 70 00 } //1 http://185.35.139.190/X/4/index3.php
		$a_01_1 = {43 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 4a 00 6f 00 68 00 6e 00 44 00 6f 00 65 00 5c 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 20 00 44 00 61 00 74 00 61 00 5c 00 4f 00 6b 00 5a 00 59 00 36 00 57 00 78 00 } //1 C:\Documents and Settings\JohnDoe\Application Data\OkZY6Wx
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}