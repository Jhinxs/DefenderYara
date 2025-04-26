
rule TrojanDownloader_O97M_Emotet_OWST_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.OWST!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 77 61 74 65 72 69 6e 67 63 61 6e 72 65 76 69 65 77 2e 78 79 7a 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 63 73 73 2f 71 6b 79 31 31 61 2f } //1 http://wateringcanreview.xyz/wp-includes/css/qky11a/
		$a_01_1 = {68 74 74 70 3a 2f 2f 63 61 6b 65 6d 69 78 74 75 72 65 72 65 76 69 65 77 2e 78 79 7a 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 55 32 61 79 59 56 43 50 52 68 57 71 45 52 79 77 34 2f } //1 http://cakemixturereview.xyz/wp-includes/U2ayYVCPRhWqERyw4/
		$a_01_2 = {68 74 74 70 3a 2f 2f 31 35 2e 32 33 37 2e 31 33 35 2e 33 38 2f 64 7a 61 39 68 72 2f 6b 6a 74 36 2f } //1 http://15.237.135.38/dza9hr/kjt6/
		$a_01_3 = {68 74 74 70 3a 2f 2f 73 68 6f 70 6e 68 61 70 2e 63 6f 6d 2f 68 69 67 68 62 69 6e 64 65 72 2f 55 65 64 56 66 54 48 44 66 35 45 6d 34 30 2f } //1 http://shopnhap.com/highbinder/UedVfTHDf5Em40/
		$a_01_4 = {68 74 74 70 73 3a 2f 2f 63 65 6c 68 6f 63 6f 72 74 6f 66 69 6c 6d 66 65 73 74 69 76 61 6c 2e 73 74 72 65 61 6d 2f 63 73 73 2f 4e 61 71 2f } //1 https://celhocortofilmfestival.stream/css/Naq/
		$a_01_5 = {68 74 74 70 73 3a 2f 2f 61 73 74 72 6f 6c 6f 67 65 72 73 61 6e 64 65 65 70 62 68 61 72 67 61 76 2e 63 6f 6d 2f 77 70 2d 61 64 6d 69 6e 2f 46 52 77 52 39 56 48 2f } //1 https://astrologersandeepbhargav.com/wp-admin/FRwR9VH/
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=1
 
}