
rule TrojanDownloader_O97M_Emotet_AMPD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.AMPD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 08 00 00 "
		
	strings :
		$a_01_0 = {3a 2f 2f 73 61 63 76 61 73 61 6e 74 68 2e 63 6f 6d 2f 70 75 62 6c 69 63 2f 6c 79 50 32 6c 68 31 68 6c 4a 72 2f } //1 ://sacvasanth.com/public/lyP2lh1hlJr/
		$a_01_1 = {3a 2f 2f 77 65 62 67 75 72 75 69 6e 64 69 61 2e 63 6f 6d 2f 74 68 65 6d 65 2f 77 54 62 45 79 4c 56 76 4d 4e 42 33 6a 2f } //1 ://webguruindia.com/theme/wTbEyLVvMNB3j/
		$a_01_2 = {3a 2f 2f 73 74 6f 63 6b 6d 6f 72 65 68 6f 75 73 65 2e 63 6f 6d 2f 43 61 73 61 5f 47 72 61 6e 64 65 2f 41 53 34 56 50 6b 54 73 4f 71 57 44 47 47 4f 2f } //1 ://stockmorehouse.com/Casa_Grande/AS4VPkTsOqWDGGO/
		$a_01_3 = {3a 2f 2f 77 61 74 65 72 73 67 72 6f 75 70 67 6c 6f 62 61 6c 2e 63 6f 6d 2f 63 67 69 2d 62 69 6e 2f 6e 51 6d 62 36 61 73 47 65 71 4d 6c 68 2f } //1 ://watersgroupglobal.com/cgi-bin/nQmb6asGeqMlh/
		$a_01_4 = {3a 2f 2f 73 74 72 61 63 68 61 6e 63 6c 61 72 6b 2e 63 6f 6d 2f 69 6d 61 67 65 73 2f 33 67 63 34 71 43 70 53 46 59 62 42 4d 44 45 43 2f } //1 ://strachanclark.com/images/3gc4qCpSFYbBMDEC/
		$a_01_5 = {3a 2f 2f 73 79 6e 61 70 73 65 2d 61 72 63 68 69 76 65 2e 63 6f 6d 2f 69 6d 61 67 65 73 2f 62 4b 61 4d 72 2f } //1 ://synapse-archive.com/images/bKaMr/
		$a_01_6 = {3a 2f 2f 73 75 6d 75 76 65 73 61 2e 63 6f 6d 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 72 67 4c 2f } //1 ://sumuvesa.com/wp-includes/rgL/
		$a_01_7 = {3a 2f 2f 73 75 63 63 65 73 73 62 6c 2e 63 6f 6d 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 65 76 79 6f 4b 66 5a 56 42 33 32 2f } //1 ://successbl.com/wp-includes/evyoKfZVB32/
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=1
 
}