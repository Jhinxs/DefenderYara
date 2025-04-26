
rule TrojanDownloader_O97M_EncDoc_CSM_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.CSM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {6d 65 64 69 61 66 69 72 65 2e 63 6f 6d 2f 66 69 6c 65 2f [0-1f] 2f ?? 2e 74 78 74 2f 66 69 6c 65 20 2d 55 73 65 42 20 2d 55 73 65 44 65 66 61 75 6c 74 43 72 65 64 65 6e 74 69 61 6c 73 20 7c 20 26 28 27 4d 4d 4d 27 2e 72 65 70 6c 61 63 65 28 27 4d 4d 4d 27 2c 27 49 27 29 2b 27 64 69 6c 64 6f 27 2e 72 65 70 6c 61 63 65 28 27 64 69 6c 64 6f 27 2c 27 45 58 27 29 29 22 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}