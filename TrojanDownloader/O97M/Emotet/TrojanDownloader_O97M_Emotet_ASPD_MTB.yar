
rule TrojanDownloader_O97M_Emotet_ASPD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.ASPD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 08 00 00 "
		
	strings :
		$a_01_0 = {3a 2f 2f 74 6f 70 76 69 70 65 73 63 6f 72 74 73 63 6c 75 62 2e 63 6f 6d 2f 61 73 73 65 74 73 31 2f 73 33 36 63 37 65 4c 69 59 56 2f } //1 ://topvipescortsclub.com/assets1/s36c7eLiYV/
		$a_01_1 = {3a 2f 2f 73 6f 63 69 67 6f 2e 65 75 2f 77 50 5a 68 5a 50 32 76 55 4d 2f } //1 ://socigo.eu/wPZhZP2vUM/
		$a_01_2 = {3a 2f 2f 74 68 6f 6e 67 63 6f 6e 67 6e 67 68 65 74 68 75 74 68 61 6d 63 61 75 2e 63 6f 6d 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 46 4f 6e 32 72 46 73 63 6a 53 78 6d 53 54 49 74 35 6a 2f } //1 ://thongcongnghethuthamcau.com/wp-includes/FOn2rFscjSxmSTIt5j/
		$a_01_3 = {3a 2f 2f 74 6d 2e 67 61 6d 65 73 74 65 72 2e 63 6f 6d 2e 74 72 2f 73 75 73 70 65 6e 64 65 64 2d 70 61 67 65 2f 70 36 68 4e 68 70 38 65 69 52 6c 39 4b 56 48 4c 32 4e 4e 2f } //1 ://tm.gamester.com.tr/suspended-page/p6hNhp8eiRl9KVHL2NN/
		$a_01_4 = {3a 2f 2f 63 68 6f 62 65 6d 61 73 74 65 72 2e 63 6f 6d 2f 63 6f 6d 70 6f 6e 65 6e 74 73 2f 47 78 43 73 2f } //1 ://chobemaster.com/components/GxCs/
		$a_01_5 = {3a 2f 2f 6c 6f 70 65 73 70 75 62 6c 69 63 69 64 61 64 65 2e 63 6f 6d 2f 63 67 69 2d 62 69 6e 2f 42 75 65 61 4e 53 72 43 50 47 59 70 4e 44 2f } //1 ://lopespublicidade.com/cgi-bin/BueaNSrCPGYpND/
		$a_01_6 = {3a 2f 2f 62 65 6e 63 65 76 65 6e 64 65 67 68 61 7a 2e 68 75 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 53 31 6d 49 45 55 6e 43 6c 72 35 73 38 6b 72 4f 6d 2f } //1 ://bencevendeghaz.hu/wp-includes/S1mIEUnClr5s8krOm/
		$a_01_7 = {3a 2f 2f 76 69 62 65 73 61 70 70 61 72 65 6c 73 2e 63 6f 6d 2f 64 51 61 2f 51 7a 75 71 71 35 54 5a 4f 2f } //1 ://vibesapparels.com/dQa/Qzuqq5TZO/
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=1
 
}