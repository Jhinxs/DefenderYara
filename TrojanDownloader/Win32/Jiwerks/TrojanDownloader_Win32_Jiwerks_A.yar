
rule TrojanDownloader_Win32_Jiwerks_A{
	meta:
		description = "TrojanDownloader:Win32/Jiwerks.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {53 00 4b 00 59 00 50 00 45 00 2c 00 47 00 4f 00 4f 00 47 00 4c 00 45 00 54 00 41 00 4c 00 4b 00 2c 00 4e 00 4f 00 54 00 45 00 50 00 41 00 44 00 2c 00 57 00 4d 00 50 00 4c 00 41 00 59 00 45 00 52 00 2c 00 4e 00 45 00 54 00 2c 00 53 00 50 00 41 00 57 00 4e 00 45 00 44 00 2c 00 4d 00 59 00 41 00 50 00 50 00 2c 00 7c 00 21 00 7c 00 48 00 41 00 4c 00 39 00 54 00 48 00 7c 00 21 00 7c 00 } //1 SKYPE,GOOGLETALK,NOTEPAD,WMPLAYER,NET,SPAWNED,MYAPP,|!|HAL9TH|!|
		$a_02_1 = {3a 2f 2f 61 64 2e [0-20] 2e 69 6e 66 6f 3a 38 30 38 30 2f 75 70 64 61 74 65 } //1
		$a_00_2 = {44 6c 6c 4d 69 61 6e } //1 DllMian
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}