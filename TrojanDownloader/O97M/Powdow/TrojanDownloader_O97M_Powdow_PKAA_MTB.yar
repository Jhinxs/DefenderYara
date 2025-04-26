
rule TrojanDownloader_O97M_Powdow_PKAA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.PKAA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {63 6d 64 20 2f 63 20 63 65 72 74 75 74 69 6c 2e 65 78 65 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 22 22 68 74 74 70 3a 2f 2f 63 61 6e 61 64 61 65 78 70 6f 72 74 73 63 65 6e 74 72 65 2e 63 6f 6d 2f 68 70 2f [0-1f] 2e 65 78 65 22 } //1
		$a_03_1 = {2e 65 78 65 2e 65 78 65 20 26 26 20 [0-2f] 2e 65 78 65 2e 65 78 65 22 2c 20 76 62 48 69 64 65 29 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}