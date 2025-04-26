
rule TrojanDownloader_Win32_Caxnet_B{
	meta:
		description = "TrojanDownloader:Win32/Caxnet.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_08_0 = {2f 73 70 6f 72 74 73 2f 69 6d 61 67 65 2e 6a 70 67 } //1 /sports/image.jpg
		$a_08_1 = {2f 6e 65 77 73 2f 69 6d 61 67 65 2e 6a 70 67 } //1 /news/image.jpg
		$a_08_2 = {2f 66 69 6c 65 73 2f 69 6d 61 67 65 2e 6a 70 67 } //1 /files/image.jpg
		$a_08_3 = {2f 6e 62 61 2f 69 6d 61 67 65 2e 6a 70 67 } //1 /nba/image.jpg
		$a_0a_4 = {70 69 6e 67 [0-06] 31 32 37 2e 30 2e 30 2e 31 3e 6e 75 6c } //1
		$a_08_5 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1 InternetOpenUrlA
	condition:
		((#a_08_0  & 1)*1+(#a_08_1  & 1)*1+(#a_08_2  & 1)*1+(#a_08_3  & 1)*1+(#a_0a_4  & 1)*1+(#a_08_5  & 1)*1) >=6
 
}