
rule TrojanDownloader_O97M_IcedID_FAAD_MTB{
	meta:
		description = "TrojanDownloader:O97M/IcedID.FAAD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {3d 20 53 70 6c 69 74 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 42 75 69 6c 74 49 6e 44 6f 63 75 6d 65 6e 74 50 72 6f 70 65 72 74 69 65 73 28 22 74 69 74 6c 65 22 29 2c 20 22 7c 7c 7c 22 29 } //1 = Split(ActiveDocument.BuiltInDocumentProperties("title"), "|||")
		$a_03_1 = {43 61 6c 6c 20 47 65 74 4f 62 6a 65 63 74 28 6c 69 62 53 65 6c 65 63 74 28 32 29 29 2e 4e 61 76 69 67 61 74 65 28 6c 69 62 53 65 6c 65 63 74 28 31 29 29 90 0c 02 00 45 6e 64 20 53 75 62 } //1
		$a_03_2 = {46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 90 0c 02 00 50 72 69 6e 74 20 23 31 2c 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 52 61 6e 67 65 2e 54 65 78 74 90 0c 02 00 43 6c 6f 73 65 20 23 31 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}