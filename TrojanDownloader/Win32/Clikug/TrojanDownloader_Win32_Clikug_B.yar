
rule TrojanDownloader_Win32_Clikug_B{
	meta:
		description = "TrojanDownloader:Win32/Clikug.B,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 47 69 67 61 43 6c 69 63 6b 73 20 43 72 61 77 6c 65 72 } //10 SOFTWARE\GigaClicks Crawler
		$a_01_1 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 4e 53 49 53 44 4c 2f 31 2e 32 20 28 4d 6f 7a 69 6c 6c 61 29 } //10 User-Agent: NSISDL/1.2 (Mozilla)
		$a_01_2 = {68 74 74 70 3a 2f 2f 63 64 6e 2e 67 69 67 61 63 6c 69 63 6b 73 2e 6e 65 74 2f 66 69 6c 65 2e 70 68 70 3f 73 75 70 70 3d 31 33 30 } //1 http://cdn.gigaclicks.net/file.php?supp=130
		$a_01_3 = {68 74 74 70 3a 2f 2f 63 64 6e 2e 67 69 67 61 63 6c 69 63 6b 73 2e 6e 65 74 2f 66 69 6c 65 2e 70 68 70 3f 73 75 70 70 3d 31 32 36 } //1 http://cdn.gigaclicks.net/file.php?supp=126
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=21
 
}
rule TrojanDownloader_Win32_Clikug_B_2{
	meta:
		description = "TrojanDownloader:Win32/Clikug.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {7a 00 69 00 64 00 6c 00 65 00 63 00 72 00 61 00 77 00 6c 00 65 00 72 00 } //1 zidlecrawler
		$a_01_1 = {49 64 6c 65 63 72 61 77 6c 65 72 43 6f 6e 74 72 6f 6c } //1 IdlecrawlerControl
		$a_01_2 = {49 00 64 00 6c 00 65 00 43 00 72 00 61 00 77 00 6c 00 65 00 72 00 20 00 63 00 6f 00 75 00 6e 00 74 00 72 00 79 00 20 00 63 00 68 00 65 00 63 00 6b 00 3a 00 } //1 IdleCrawler country check:
		$a_01_3 = {63 00 64 00 6e 00 2e 00 69 00 64 00 6c 00 65 00 63 00 72 00 61 00 77 00 6c 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 2f 00 70 00 72 00 65 00 63 00 68 00 65 00 63 00 6b 00 2f 00 3f 00 73 00 75 00 70 00 70 00 3d 00 } //1 cdn.idlecrawler.com/precheck/?supp=
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}