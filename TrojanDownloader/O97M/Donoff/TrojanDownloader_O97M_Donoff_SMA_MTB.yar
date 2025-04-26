
rule TrojanDownloader_O97M_Donoff_SMA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.SMA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 73 3a 2f 2f 77 77 77 2e 62 69 74 6c 79 2e 63 6f 6d 2f 61 73 61 68 64 6a 69 61 69 61 61 61 72 71 61 77 6e } //1 https://www.bitly.com/asahdjiaiaaarqawn
		$a_01_1 = {22 6d 22 20 2b 20 22 73 22 20 2b 20 22 68 22 20 2b 20 22 74 22 20 2b 20 22 61 22 } //1 "m" + "s" + "h" + "t" + "a"
		$a_01_2 = {28 53 74 72 52 65 76 65 72 73 65 20 5f 90 02 04 28 22 30 30 30 30 34 35 33 35 35 34 34 34 2d 45 39 34 41 2d 45 43 31 31 2d 39 37 32 43 2d 30 32 36 39 30 37 33 31 3a 77 65 6e 22 29 20 5f } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Donoff_SMA_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Donoff.SMA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_01_0 = {43 68 72 28 33 34 29 20 26 20 22 3b 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 44 6f 63 75 6d 65 6e 74 73 5c 6f 6e 74 6f 6e 65 65 64 2e 65 78 22 20 26 } //1 Chr(34) & ";C:\Users\Public\Documents\ontoneed.ex" &
		$a_01_1 = {26 20 43 68 72 28 33 34 29 20 26 20 22 68 74 74 70 3a 2f 2f 32 30 39 2e 31 34 31 2e 36 31 2e 31 32 34 2f 51 2d 32 2f 43 6f 6e 73 6f 6c 65 41 70 70 39 2e 65 78 22 20 26 } //1 & Chr(34) & "http://209.141.61.124/Q-2/ConsoleApp9.ex" &
		$a_01_2 = {26 20 43 68 72 28 33 34 29 20 26 20 22 68 74 74 70 3a 2f 2f 32 30 39 2e 31 34 31 2e 36 31 2e 31 32 34 2f 51 2d 32 2f 61 73 64 38 30 2e 65 78 22 20 26 } //1 & Chr(34) & "http://209.141.61.124/Q-2/asd80.ex" &
		$a_01_3 = {43 68 72 28 33 34 29 20 26 20 22 3b 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 44 6f 63 75 6d 65 6e 74 73 5c 74 68 65 65 6e 6a 6f 79 2e 65 78 22 20 26 } //1 Chr(34) & ";C:\Users\Public\Documents\theenjoy.ex" &
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=2
 
}