
rule TrojanDownloader_O97M_Obfuse_RVJ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RVJ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_02_0 = {73 68 61 72 65 2e 67 65 74 63 6c 6f 75 64 61 70 70 2e 63 6f 6d 2f 78 51 75 6e 59 44 31 57 2f 64 6f 77 6e 6c 6f 61 64 2f 46 69 6e 61 6c 2e 70 69 66 3f 6b 3d 39 38 61 35 35 36 65 30 26 75 74 6d 5f 73 6f 75 72 63 65 3d 76 69 65 77 65 72 5f 6e 65 77 22 90 0a 6f 00 49 6d 61 67 65 6d 53 69 6d 70 6c 65 73 43 44 54 20 3d 20 22 68 74 74 70 73 3a 2f 2f } //1
		$a_00_1 = {53 68 65 6c 6c 20 28 4d 5f 53 20 2b 20 54 4f 47 41 43 44 54 20 2b 20 4d 5f 53 31 20 2b 20 4d 5f 53 32 20 2b 20 4d 5f 53 33 29 2c 20 30 } //1 Shell (M_S + TOGACDT + M_S1 + M_S2 + M_S3), 0
		$a_00_2 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 20 30 2c 20 49 6d 61 67 65 6d 53 69 6d 70 6c 65 73 43 44 54 2c 20 4d 61 73 74 65 72 43 44 54 20 26 20 22 64 6f 63 75 6d 65 6e 74 2e 70 69 66 22 2c 20 30 2c 20 30 } //1 URLDownloadToFile 0, ImagemSimplesCDT, MasterCDT & "document.pif", 0, 0
		$a_00_3 = {50 44 66 5f 33 20 3d 20 22 6e 67 20 31 32 37 2e 30 2e 30 2e 31 20 2d 6e 20 31 30 20 22 } //1 PDf_3 = "ng 127.0.0.1 -n 10 "
		$a_00_4 = {52 61 62 6f 44 65 43 61 76 61 6c 6f 20 3d 20 22 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 64 6f 63 75 6d 65 6e 74 2e 22 } //1 RaboDeCavalo = ":\Users\Public\document."
		$a_00_5 = {50 44 66 5f 35 20 3d 20 22 65 78 65 22 } //1 PDf_5 = "exe"
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}