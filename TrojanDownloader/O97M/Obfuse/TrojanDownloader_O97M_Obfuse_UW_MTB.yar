
rule TrojanDownloader_O97M_Obfuse_UW_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.UW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 6e 64 43 77 68 42 69 5f 64 34 62 36 33 59 70 39 48 68 31 6f 39 41 4c 4e 63 49 28 29 } //1 Sub ndCwhBi_d4b63Yp9Hh1o9ALNcI()
		$a_01_1 = {68 68 66 67 67 68 67 66 66 20 3d 20 33 } //1 hhfgghgff = 3
		$a_01_2 = {62 5f 5f 5f 76 20 3d 20 43 68 72 28 64 73 20 2d 20 39 39 29 } //1 b___v = Chr(ds - 99)
		$a_01_3 = {6f 69 64 66 66 67 64 6e 67 6b 20 3d 20 22 66 64 73 68 75 75 67 20 66 6a 69 6a 67 76 62 6f 64 66 73 34 20 64 66 66 67 38 39 65 72 65 66 22 } //1 oidffgdngk = "fdshuug fjijgvbodfs4 dffg89eref"
		$a_01_4 = {66 64 73 67 64 66 73 6f 69 20 3d 20 22 69 6f 73 61 64 66 6f 64 73 69 20 35 36 34 36 20 64 73 61 66 64 73 79 61 67 66 38 20 66 69 73 64 75 65 72 77 39 38 22 } //1 fdsgdfsoi = "iosadfodsi 5646 dsafdsyagf8 fisduerw98"
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}