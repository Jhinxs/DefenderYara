
rule TrojanDownloader_O97M_Obfuse_PT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {2e 63 6f 6d 2e 62 72 2f 90 0a 3c 00 3d 20 22 4d 53 48 54 41 20 (68 74 74 70|68 74 74 70 73) 3a 2f 2f 6d 61 72 69 6e 67 61 72 65 73 65 72 76 61 73 } //1
		$a_00_1 = {53 68 65 6c 6c 20 28 56 61 72 29 } //1 Shell (Var)
		$a_00_2 = {53 75 62 20 41 75 74 6f 5f 4f 70 65 6e 28 29 } //1 Sub Auto_Open()
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Obfuse_PT_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {53 68 65 6c 6c 20 22 63 4d 64 20 2f 63 20 63 64 20 25 54 45 4d 50 25 20 26 40 65 63 68 6f 20 47 38 65 20 3d 20 22 22 68 74 74 70 3a 2f 2f 63 6f 6d 70 61 6e 79 2e 73 75 70 65 72 77 65 62 2e 77 73 2f 76 69 65 77 2f 6e 6f 74 65 2e 65 78 65 22 22 3e 3e 51 36 6a 2e 76 62 73 20 26 40 65 63 68 6f 20 57 37 78 20 3d 20 4e 36 6f 28 22 22 [0-10] 22 22 29 3e 3e 51 36 6a 2e 76 62 73 } //1
		$a_02_1 = {53 68 65 6c 6c 20 22 63 4d 64 20 2f 63 20 63 64 20 25 54 45 4d 50 25 20 26 40 65 63 68 6f 20 49 36 6c 20 3d 20 22 22 68 74 74 70 3a 2f 2f 76 69 65 77 2e 73 75 70 65 72 77 65 62 2e 77 73 2f 73 69 74 65 2f 66 6f 6c 64 65 72 2e 65 78 65 22 22 3e 3e 46 35 73 2e 76 62 73 20 26 40 65 63 68 6f 20 44 39 71 20 3d 20 53 32 6c 28 22 22 [0-10] 22 22 29 3e 3e 46 35 73 2e 76 62 73 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=1
 
}