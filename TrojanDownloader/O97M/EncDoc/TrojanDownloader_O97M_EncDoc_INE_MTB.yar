
rule TrojanDownloader_O97M_EncDoc_INE_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.INE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {49 6e 74 65 6c 43 6f 6d 70 61 6e 79 [0-04] 5c 4a 49 4f 4c 41 53 2e 52 52 54 54 4f 4f 4b 4b } //1
		$a_01_1 = {73 74 61 72 6b 64 6f 6f 72 2e 63 6f 6d 2f } //1 starkdoor.com/
		$a_01_2 = {47 65 79 72 74 75 74 72 66 } //1 Geyrtutrf
		$a_03_3 = {61 70 70 65 72 6f 6c [0-04] 70 6e 67 } //1
		$a_01_4 = {43 3a 5c 49 6e 74 65 6c 43 6f 6d 70 61 6e 79 5c 4a 49 4f 4c 41 53 2e 52 52 54 54 4f 4f 4b 4b } //1 C:\IntelCompany\JIOLAS.RRTTOOKK
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}