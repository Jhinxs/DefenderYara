
rule TrojanDownloader_O97M_Qakbot_FIS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.FIS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 08 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 73 3a 2f 2f 66 69 73 69 63 61 6d 70 2e 63 6f 6d 2f 64 73 2f 32 33 31 31 32 30 2e 67 69 66 } //1 https://fisicamp.com/ds/231120.gif
		$a_01_1 = {68 74 74 70 73 3a 2f 2f 62 6f 61 74 73 73 61 2e 63 6f 6d 2f 64 73 2f 32 33 31 31 32 30 2e 67 69 66 } //1 https://boatssa.com/ds/231120.gif
		$a_01_2 = {68 74 74 70 73 3a 2f 2f 66 65 72 6f 6d 6f 6e 2e 73 68 6f 70 2f 64 73 2f 32 33 31 31 32 30 2e 67 69 66 } //1 https://feromon.shop/ds/231120.gif
		$a_01_3 = {68 74 74 70 73 3a 2f 2f 61 76 72 61 2e 64 74 6d 68 2e 67 72 2f 64 73 2f 32 33 31 31 32 30 2e 67 69 66 } //1 https://avra.dtmh.gr/ds/231120.gif
		$a_01_4 = {68 74 74 70 3a 2f 2f 70 61 6e 7a 72 2e 74 65 63 68 2f 64 73 2f 32 33 31 31 32 30 2e 67 69 66 } //1 http://panzr.tech/ds/231120.gif
		$a_01_5 = {68 74 74 70 73 3a 2f 2f 6b 65 6e 61 73 38 38 38 2e 63 6f 6d 2f 64 73 2f 32 33 31 31 32 30 2e 67 69 66 } //1 https://kenas888.com/ds/231120.gif
		$a_01_6 = {68 74 74 70 73 3a 2f 2f 72 6c 69 6e 6b 30 31 31 2e 70 77 2f 64 73 2f 32 33 31 31 32 30 2e 67 69 66 } //1 https://rlink011.pw/ds/231120.gif
		$a_01_7 = {52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 RLDownloadToFileA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=2
 
}