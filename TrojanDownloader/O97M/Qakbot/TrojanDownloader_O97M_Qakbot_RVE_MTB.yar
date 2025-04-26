
rule TrojanDownloader_O97M_Qakbot_RVE_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.RVE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 08 00 00 "
		
	strings :
		$a_01_0 = {74 74 70 73 3a 2f 2f 6d 6f 72 65 70 72 6f 64 75 63 74 73 2e 63 6f 6d 2f 4b 52 47 68 66 48 33 49 45 45 73 6a 2f 6e 66 76 62 68 4e 2e 70 6e 67 22 2c 22 } //1 ttps://moreproducts.com/KRGhfH3IEEsj/nfvbhN.png","
		$a_01_1 = {74 74 70 73 3a 2f 2f 67 78 6c 69 76 65 2e 63 61 2f 6e 61 55 52 77 75 58 6b 2f 6e 66 76 62 68 4e 2e 70 6e 67 22 2c 22 } //1 ttps://gxlive.ca/naURwuXk/nfvbhN.png","
		$a_01_2 = {74 74 70 73 3a 2f 2f 66 6f 6e 74 65 6c 69 66 65 2e 63 6f 6d 2e 62 72 2f 6c 78 54 43 63 6d 64 73 4c 57 2f 6e 66 76 62 68 4e 2e 70 6e 67 22 2c 22 } //1 ttps://fontelife.com.br/lxTCcmdsLW/nfvbhN.png","
		$a_01_3 = {74 74 70 3a 2f 2f 69 6e 74 65 72 73 74 61 74 65 70 68 6f 74 6f 2e 63 6f 6d 2f 76 2d 77 65 62 2f 52 66 38 44 32 30 76 2f 22 2c 22 } //1 ttp://interstatephoto.com/v-web/Rf8D20v/","
		$a_01_4 = {74 74 70 3a 2f 2f 69 6f 73 69 6e 63 6f 72 70 6f 72 61 74 65 64 2e 63 6f 6d 2f 5f 62 6f 72 64 65 72 73 2f 5a 49 4d 55 2f 22 2c 22 } //1 ttp://iosincorporated.com/_borders/ZIMU/","
		$a_01_5 = {74 74 70 3a 2f 2f 69 70 69 72 61 6e 67 61 6f 6e 6c 69 6e 65 2e 63 6f 6d 2e 62 72 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 43 64 64 46 4d 76 2f 22 2c 22 } //1 ttp://ipirangaonline.com.br/wp-content/CddFMv/","
		$a_01_6 = {74 74 70 3a 2f 2f 69 6e 79 64 65 73 69 67 6e 2e 73 6b 2f 47 2f 32 4d 56 52 47 50 2f 22 2c 22 } //1 ttp://inydesign.sk/G/2MVRGP/","
		$a_01_7 = {74 74 70 3a 2f 2f 69 73 6b 6f 6e 74 65 63 68 2e 63 6f 6d 2f 64 6f 77 6e 6c 6f 61 64 74 65 73 74 2f 6c 52 47 38 44 71 65 72 2f 22 2c 22 } //1 ttp://iskontech.com/downloadtest/lRG8Dqer/","
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=1
 
}