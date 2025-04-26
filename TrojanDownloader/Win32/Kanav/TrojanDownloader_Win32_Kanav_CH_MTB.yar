
rule TrojanDownloader_Win32_Kanav_CH_MTB{
	meta:
		description = "TrojanDownloader:Win32/Kanav.CH!MTB,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //1 InternetReadFile
		$a_01_1 = {25 53 79 73 74 65 6d 52 6f 6f 74 25 5c 73 79 73 74 65 6d 33 32 5c 47 6f 6f 67 6c 65 55 70 64 61 74 65 2e 65 78 65 } //1 %SystemRoot%\system32\GoogleUpdate.exe
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 42 6c 69 7a 7a 61 72 64 20 45 6e 74 65 72 74 61 69 6e 6d 65 6e 74 5c 42 61 74 74 6c 65 2e 6e 65 74 } //1 SOFTWARE\Blizzard Entertainment\Battle.net
		$a_01_3 = {72 65 67 20 64 65 6c 65 74 65 20 22 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 41 63 74 69 76 65 20 53 65 74 75 70 5c 49 6e 73 74 61 6c 6c 65 64 20 43 6f 6d 70 6f 6e 65 6e 74 73 } //1 reg delete "HKEY_CURRENT_USER\Software\Microsoft\Active Setup\Installed Components
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}