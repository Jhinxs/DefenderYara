
rule TrojanDownloader_O97M_Emotet_PDV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.PDV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 07 00 00 "
		
	strings :
		$a_01_0 = {3a 2f 2f 6d 61 74 73 6b 69 67 72 6f 75 70 2e 63 6f 6d 2f 77 70 2d 61 64 6d 69 6e 2f 6e 71 47 61 74 67 59 79 4e 73 6b 58 58 71 45 6e 4a 77 2f } //1 ://matskigroup.com/wp-admin/nqGatgYyNskXXqEnJw/
		$a_01_1 = {3a 2f 2f 73 61 66 65 63 61 6d 70 75 73 2e 6e 65 74 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 59 55 65 47 33 75 75 6d 74 65 50 50 2f } //1 ://safecampus.net/wp-includes/YUeG3uumtePP/
		$a_01_2 = {3a 2f 2f 61 6b 62 61 6b 61 6e 2e 63 6f 6d 2f 61 51 6f 6e 51 30 52 63 2f } //1 ://akbakan.com/aQonQ0Rc/
		$a_01_3 = {3a 2f 2f 68 69 70 70 6f 63 72 61 74 65 73 2d 70 6f 65 74 72 79 2e 6f 72 67 2f 31 30 74 68 2d 61 6e 6e 75 61 6c 2d 68 69 70 70 6f 63 72 61 74 65 73 2f 75 53 30 49 65 4f 41 41 75 6f 51 37 4e 50 39 63 6d 2f } //1 ://hippocrates-poetry.org/10th-annual-hippocrates/uS0IeOAAuoQ7NP9cm/
		$a_01_4 = {3a 2f 2f 63 61 62 69 6e 65 74 63 65 63 61 66 2e 63 6f 6d 2f 77 70 2d 61 64 6d 69 6e 2f 44 68 71 55 79 2f } //1 ://cabinetcecaf.com/wp-admin/DhqUy/
		$a_01_5 = {3a 2f 2f 64 69 67 69 64 69 73 74 2e 63 6f 6d 2f 79 33 2f 50 66 61 6b 6a 4a 42 2f } //1 ://digidist.com/y3/PfakjJB/
		$a_01_6 = {3a 2f 2f 63 6c 6f 75 64 2d 63 69 2e 6f 6e 6c 69 6e 65 2f 62 61 63 6b 75 70 2f 64 42 73 49 50 2f } //1 ://cloud-ci.online/backup/dBsIP/
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=1
 
}