
rule TrojanDownloader_O97M_Emotet_VPD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.VPD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 "
		
	strings :
		$a_01_0 = {3a 2f 2f 63 6f 6e 67 74 79 63 61 6d 76 69 6e 68 2e 63 6f 6d 2f 70 6c 75 67 69 6e 73 2f 6a 47 33 69 71 70 51 61 54 4c 31 54 58 59 4d 6f 6c 48 2f } //1 ://congtycamvinh.com/plugins/jG3iqpQaTL1TXYMolH/
		$a_01_1 = {3a 2f 2f 65 63 75 62 65 2e 63 6f 6d 2e 6d 78 2f 65 32 6f 43 57 42 6e 43 2f 36 77 70 32 4b 34 73 66 51 6d 56 49 52 79 36 5a 76 64 69 48 2f } //1 ://ecube.com.mx/e2oCWBnC/6wp2K4sfQmVIRy6ZvdiH/
		$a_01_2 = {3a 2f 2f 64 75 6c 69 63 68 64 69 63 68 76 75 2e 6e 65 74 2f 6c 69 62 72 61 72 69 65 73 2f 36 76 68 7a 77 6f 5a 6f 4e 44 53 4d 74 53 43 2f } //1 ://dulichdichvu.net/libraries/6vhzwoZoNDSMtSC/
		$a_01_3 = {3a 2f 2f 67 6e 69 66 2e 6f 72 67 2f 61 64 6d 69 6e 69 73 74 72 61 74 6f 72 2f 47 36 38 48 77 55 47 6c 4b 4e 4a 4e 55 32 76 68 35 63 7a 2f } //1 ://gnif.org/administrator/G68HwUGlKNJNU2vh5cz/
		$a_01_4 = {3a 2f 2f 65 64 6f 72 61 73 65 67 75 72 6f 73 2e 63 6f 6d 2e 62 72 2f 63 67 69 2d 62 69 6e 2f 6c 37 5a 45 52 76 35 64 65 4e 73 66 7a 6c 5a 55 5a 2f } //1 ://edoraseguros.com.br/cgi-bin/l7ZERv5deNsfzlZUZ/
		$a_01_5 = {3a 2f 2f 73 61 6e 6f 6d 61 2e 61 6c 6c 72 65 6e 74 2e 6e 6c 2f 63 67 69 2d 62 69 6e 2f 4b 58 62 49 35 4f 68 4c 4a 2f } //1 ://sanoma.allrent.nl/cgi-bin/KXbI5OhLJ/
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=1
 
}