
rule TrojanDownloader_O97M_Lisink_A{
	meta:
		description = "TrojanDownloader:O97M/Lisink.A,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_02_0 = {2e 47 65 74 4c 6f 67 69 6e 28 [0-0c] 29 } //1
		$a_02_1 = {2e 47 65 74 50 61 73 73 77 6f 72 64 28 [0-0c] 29 } //1
		$a_01_2 = {2e 57 72 69 74 65 20 62 61 74 } //1 .Write bat
		$a_01_3 = {2e 57 72 69 74 65 20 76 62 73 } //1 .Write vbs
		$a_02_4 = {53 68 65 6c 6c 20 28 [0-0c] 28 41 72 72 61 79 28 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_02_4  & 1)*1) >=5
 
}