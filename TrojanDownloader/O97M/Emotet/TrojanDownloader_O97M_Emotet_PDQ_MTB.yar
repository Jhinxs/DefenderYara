
rule TrojanDownloader_O97M_Emotet_PDQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.PDQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 "
		
	strings :
		$a_01_0 = {3a 2f 2f 74 6f 75 71 61 72 72 61 79 61 6e 2e 63 6f 6d 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 52 6f 69 42 2f } //1 ://touqarrayan.com/wp-content/RoiB/
		$a_01_1 = {3a 2f 2f 6e 61 79 7a 61 71 61 6c 6a 61 6e 6f 6f 62 2d 69 71 2e 63 6f 6d 2f 73 61 70 62 75 73 68 2f 74 79 6c 68 65 31 2f } //1 ://nayzaqaljanoob-iq.com/sapbush/tylhe1/
		$a_01_2 = {3a 2f 2f 63 61 62 69 6e 65 74 2d 62 72 69 62 65 63 68 2e 63 6f 6d 2f 77 70 2f 44 79 4d 4e 67 6c 52 59 35 42 34 61 62 50 79 31 68 48 2f } //1 ://cabinet-bribech.com/wp/DyMNglRY5B4abPy1hH/
		$a_01_3 = {3a 2f 2f 72 65 74 61 69 6c 68 70 73 69 6e 74 65 72 76 69 65 77 2e 63 6f 6d 2f 63 67 69 2d 62 69 6e 2f 64 4a 70 39 52 59 68 2f } //1 ://retailhpsinterview.com/cgi-bin/dJp9RYh/
		$a_01_4 = {3a 2f 2f 6c 69 73 61 6c 6d 63 67 65 65 2e 63 6f 6d 2f 69 6d 61 67 65 73 2f 78 70 6c 37 69 31 45 54 7a 48 50 77 61 46 64 38 39 48 53 2f } //1 ://lisalmcgee.com/images/xpl7i1ETzHPwaFd89HS/
		$a_01_5 = {3a 2f 2f 63 6f 6c 6c 69 73 69 6f 6e 2d 73 74 61 67 69 6e 67 2e 63 6f 6d 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 39 34 50 51 31 2f } //1 ://collision-staging.com/wp-content/94PQ1/
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=1
 
}