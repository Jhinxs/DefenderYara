
rule TrojanDownloader_O97M_Emotet_SAS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.SAS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {20 3d 20 22 73 67 20 79 77 20 61 68 72 6f 73 67 20 79 77 20 61 68 73 67 20 79 77 20 61 68 63 65 73 67 20 79 77 20 61 68 73 73 67 20 79 77 20 61 68 73 73 67 20 79 77 20 61 68 73 67 20 79 77 20 61 68 22 } //1  = "sg yw ahrosg yw ahsg yw ahcesg yw ahssg yw ahssg yw ahsg yw ah"
		$a_01_1 = {20 3d 20 22 73 67 20 79 77 20 61 68 3a 77 73 67 20 79 77 20 61 68 73 67 20 79 77 20 61 68 69 6e 73 67 20 79 77 20 61 68 33 73 67 20 79 77 20 61 68 32 73 67 20 79 77 20 61 68 5f 73 67 20 79 77 20 61 68 22 } //1  = "sg yw ah:wsg yw ahsg yw ahinsg yw ah3sg yw ah2sg yw ah_sg yw ah"
		$a_01_2 = {20 3d 20 22 77 73 67 20 79 77 20 61 68 69 6e 73 67 20 79 77 20 61 68 6d 73 67 20 79 77 20 61 68 67 6d 73 67 20 79 77 20 61 68 74 73 67 20 79 77 20 61 68 73 67 20 79 77 20 61 68 22 } //1  = "wsg yw ahinsg yw ahmsg yw ahgmsg yw ahtsg yw ahsg yw ah"
		$a_03_3 = {20 3d 20 52 65 70 6c 61 63 65 28 [0-20] 2c 20 22 73 67 20 79 77 20 61 68 22 2c 20 [0-20] 29 } //1
		$a_03_4 = {2e 43 72 65 61 74 65 20 [0-20] 2c 20 [0-20] 2c } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}