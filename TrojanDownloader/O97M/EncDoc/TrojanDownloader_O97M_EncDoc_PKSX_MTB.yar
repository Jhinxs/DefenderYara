
rule TrojanDownloader_O97M_EncDoc_PKSX_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.PKSX!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 07 00 00 "
		
	strings :
		$a_01_0 = {74 74 70 3a 2f 2f 77 77 77 2e 63 6c 61 73 69 74 65 2e 63 6f 6d 2f 62 6c 6f 67 73 2f 49 45 45 73 79 6e 2f 22 2c 22 } //1 ttp://www.clasite.com/blogs/IEEsyn/","
		$a_01_1 = {74 74 70 73 3a 2f 2f 6f 6e 63 72 65 74 65 2d 65 67 79 2e 63 6f 6d 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 56 36 49 67 7a 77 38 2f 22 2c 22 } //1 ttps://oncrete-egy.com/wp-content/V6Igzw8/","
		$a_01_2 = {74 74 70 3a 2f 2f 6f 70 65 6e 63 61 72 74 2d 64 65 73 74 65 6b 2e 63 6f 6d 2f 63 61 74 61 6c 6f 67 2f 4f 71 48 77 51 38 78 6c 57 61 35 47 6f 79 6f 2f 22 2c 22 } //1 ttp://opencart-destek.com/catalog/OqHwQ8xlWa5Goyo/","
		$a_01_3 = {74 74 70 3a 2f 2f 77 77 77 2e 70 6a 65 73 61 63 61 63 2e 63 6f 6d 2f 63 6f 6d 70 6f 6e 65 6e 74 73 2f 4f 39 33 58 58 68 4d 4e 33 74 4f 74 54 6c 56 2f 22 2c 22 } //1 ttp://www.pjesacac.com/components/O93XXhMN3tOtTlV/","
		$a_01_4 = {74 74 70 73 3a 2f 2f 62 6f 73 6e 79 2e 63 6f 6d 2f 61 73 70 6e 65 74 5f 63 6c 69 65 6e 74 2f 4e 47 54 78 31 46 55 7a 71 2f 22 2c 22 } //1 ttps://bosny.com/aspnet_client/NGTx1FUzq/","
		$a_01_5 = {74 74 70 73 3a 2f 2f 77 77 77 2e 62 65 72 65 6b 65 74 68 61 62 65 72 2e 63 6f 6d 2f 68 61 74 61 78 2f 63 37 63 72 47 64 65 6a 57 34 33 38 30 4f 52 75 78 71 52 2f 22 2c 22 } //1 ttps://www.berekethaber.com/hatax/c7crGdejW4380ORuxqR/","
		$a_01_6 = {74 74 70 73 3a 2f 2f 62 75 6c 6c 64 6f 67 69 72 6f 6e 77 6f 72 6b 73 6c 6c 63 2e 63 6f 6d 2f 74 65 6d 70 2f 42 42 68 35 48 48 70 65 69 2f 22 2c 22 } //1 ttps://bulldogironworksllc.com/temp/BBh5HHpei/","
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=1
 
}