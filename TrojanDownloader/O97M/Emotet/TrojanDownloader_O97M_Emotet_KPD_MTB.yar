
rule TrojanDownloader_O97M_Emotet_KPD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.KPD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 07 00 00 "
		
	strings :
		$a_01_0 = {3a 2f 2f 6f 73 6d 61 6e 69 2e 61 74 77 65 62 70 61 67 65 73 2e 63 6f 6d 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 59 6e 77 72 72 2f } //1 ://osmani.atwebpages.com/wp-content/Ynwrr/
		$a_01_1 = {3a 2f 2f 35 30 2d 35 30 61 72 61 76 69 64 69 73 2e 67 72 2f 74 68 65 73 69 2f 77 6d 4c 2f } //1 ://50-50aravidis.gr/thesi/wmL/
		$a_01_2 = {3a 2f 2f 61 6d 70 6c 61 6d 61 69 73 62 65 6e 65 66 69 63 69 6f 73 2e 63 6f 6d 2e 62 72 2f 63 6f 6e 74 72 61 74 6f 73 2f 4d 57 6e 6e 5a 47 2f } //1 ://amplamaisbeneficios.com.br/contratos/MWnnZG/
		$a_01_3 = {3a 2f 2f 62 63 69 6e 67 65 6e 69 65 72 69 61 2e 65 73 2f 70 68 70 6d 61 69 6c 65 72 2f 5a 37 66 6d 63 49 37 56 61 2f } //1 ://bcingenieria.es/phpmailer/Z7fmcI7Va/
		$a_01_4 = {3a 2f 2f 62 72 65 64 61 62 65 65 6c 64 2e 6e 6c 2f 4f 4c 44 2f 65 61 76 47 70 32 4b 4f 64 77 58 54 2f } //1 ://bredabeeld.nl/OLD/eavGp2KOdwXT/
		$a_01_5 = {3a 2f 2f 77 77 77 2e 63 61 67 61 74 61 79 67 75 6e 65 73 2e 63 6f 6d 2e 74 72 2f 73 74 79 6c 65 73 68 65 65 74 73 2f 75 71 4b 34 6b 66 68 47 34 52 41 75 52 49 41 32 2f } //1 ://www.cagataygunes.com.tr/stylesheets/uqK4kfhG4RAuRIA2/
		$a_01_6 = {3a 2f 2f 6b 6f 67 65 6c 76 61 6e 67 65 72 2e 6e 6c 2f 70 69 63 74 75 72 65 5f 6c 69 62 72 61 72 79 2f 31 4d 4e 71 4b 61 6e 32 46 68 57 74 51 67 35 55 61 63 75 2f } //1 ://kogelvanger.nl/picture_library/1MNqKan2FhWtQg5Uacu/
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=1
 
}