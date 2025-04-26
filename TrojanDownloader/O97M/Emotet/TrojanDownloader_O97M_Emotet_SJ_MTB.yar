
rule TrojanDownloader_O97M_Emotet_SJ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.SJ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {2e 43 72 65 61 74 65 } //1 .Create
		$a_01_1 = {2b 20 28 22 53 54 41 52 54 55 22 29 } //1 + ("STARTU")
		$a_03_2 = {46 75 6e 63 74 69 6f 6e [0-14] 28 29 90 0c 02 00 4f 6e 20 45 72 72 6f 72 20 52 65 73 75 6d 65 20 4e 65 78 74 } //1
		$a_03_3 = {4e 65 78 74 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 0c 02 00 46 75 6e 63 74 69 6f 6e 20 [0-18] 28 29 } //1
		$a_03_4 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 28 90 05 0f 06 41 2d 5a 61 2d 7a 29 29 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}