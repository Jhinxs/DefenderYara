
rule TrojanDownloader_O97M_Emotet_VQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.VQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {43 61 6c 6c 20 [0-20] 2e 20 5f 90 0c 02 00 43 72 65 61 74 65 28 [0-20] 2c 20 90 05 0f 06 41 2d 5a 61 2d 7a 2c } //1
		$a_01_1 = {2e 50 61 67 65 73 28 30 29 2e 43 61 70 74 69 6f 6e } //1 .Pages(0).Caption
		$a_03_2 = {2b 20 53 74 72 52 65 76 65 72 73 65 28 [0-06] 29 29 [0-20] 5f } //1
		$a_03_3 = {2e 54 61 67 [0-20] 5f } //1
		$a_03_4 = {2e 43 6f 6e 74 72 6f 6c 54 69 70 54 65 78 74 20 2b 20 6f 49 50 [0-20] 5f } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}