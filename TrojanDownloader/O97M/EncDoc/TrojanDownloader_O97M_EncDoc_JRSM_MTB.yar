
rule TrojanDownloader_O97M_EncDoc_JRSM_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.JRSM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_03_0 = {43 3a 5c 78 35 63 50 72 6f 67 72 61 6d 44 61 74 61 5c 78 35 63 64 64 6f 6e 64 2e 63 6f 6d 5c 78 32 30 68 74 74 70 73 3a 2f 2f 77 77 77 2e 6d 65 64 69 61 66 69 72 65 2e 63 6f 6d 2f 66 69 6c 65 2f [0-1f] 2f [0-1f] 2e 68 74 6d 2f 66 69 6c 65 } //1
		$a_01_1 = {29 2e 63 72 65 61 74 65 28 22 77 73 63 72 69 70 74 63 3a 5c 75 73 65 72 73 5c 70 75 62 6c 69 63 5c 6b 69 6c 6c 6c 6c 6c 2e 6a 73 22 29 } //1 ).create("wscriptc:\users\public\killlll.js")
		$a_01_2 = {43 72 65 61 74 65 20 28 22 77 73 63 72 69 70 74 20 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 75 70 64 61 74 65 2e 6a 73 22 29 } //1 Create ("wscript C:\Users\Public\update.js")
		$a_01_3 = {3d 20 22 21 40 23 23 21 21 40 25 5e 40 5e 5e 6e 26 26 24 25 23 67 26 26 24 25 23 74 63 61 72 3a 22 } //1 = "!@##!!@%^@^^n&&$%#g&&$%#tcar:"
		$a_01_4 = {35 6e 6f 6f 6f 5f 50 72 6f 63 65 36 36 22 } //1 5nooo_Proce66"
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}