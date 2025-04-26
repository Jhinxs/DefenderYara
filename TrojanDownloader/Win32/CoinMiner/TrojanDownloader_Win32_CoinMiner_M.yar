
rule TrojanDownloader_Win32_CoinMiner_M{
	meta:
		description = "TrojanDownloader:Win32/CoinMiner.M,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 31 38 35 2e 32 31 39 2e 32 32 33 2e 31 31 39 2f 73 74 61 74 73 2f 3f 61 72 68 3d } //1 http://185.219.223.119/stats/?arh=
		$a_01_1 = {53 4f 46 54 57 41 52 45 5c 57 4f 57 36 34 33 32 4e 6f 64 65 5c 53 68 6f 72 74 63 75 74 65 72 5c } //1 SOFTWARE\WOW6432Node\Shortcuter\
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 53 68 6f 72 74 63 75 74 65 72 5c } //1 SOFTWARE\Shortcuter\
		$a_01_3 = {53 63 68 54 61 73 6b 73 20 2f 43 72 65 61 74 65 20 2f 53 43 20 4f 4e 4c 4f 47 4f 4e 20 2f 54 4e 20 22 } //1 SchTasks /Create /SC ONLOGON /TN "
		$a_01_4 = {53 65 74 20 66 52 41 4e 44 4f 4d 3d 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 63 72 69 70 74 69 6e 67 2e 46 69 6c 65 53 79 73 74 65 6d 4f 62 6a 65 63 74 22 29 } //1 Set fRANDOM=CreateObject("Scripting.FileSystemObject")
		$a_01_5 = {53 65 74 20 70 52 41 4e 44 4f 4d 3d 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 69 6e 48 74 74 70 2e 57 69 6e 48 74 74 70 52 65 71 75 65 73 74 2e 35 2e 31 22 29 } //1 Set pRANDOM=CreateObject("WinHttp.WinHttpRequest.5.1")
		$a_03_6 = {68 74 74 70 3a 2f 2f 90 1d 05 00 2e 66 74 70 68 6f 73 74 69 6e 67 2e 70 77 2f 75 73 65 72 38 31 32 34 39 2f 34 39 31 38 2f 90 10 05 00 2e 74 78 74 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_03_6  & 1)*1) >=5
 
}