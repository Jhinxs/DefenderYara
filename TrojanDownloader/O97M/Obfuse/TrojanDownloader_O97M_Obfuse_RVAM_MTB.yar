
rule TrojanDownloader_O97M_Obfuse_RVAM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RVAM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {44 65 63 72 79 70 74 49 6a 68 66 64 64 66 64 67 64 66 62 76 67 6a 73 66 64 68 64 67 64 66 6a 66 73 66 28 22 66 79 66 2f 6d 6d 64 64 22 29 } //1 DecryptIjhfddfdgdfbvgjsfdhdgdfjfsf("fyf/mmdd")
		$a_01_1 = {4d 69 64 28 65 6e 63 2c 20 69 69 73 64 66 76 6a 6e 64 66 6a 6a 68 76 66 76 6b 73 75 66 68 66 76 69 2c 20 31 29 } //1 Mid(enc, iisdfvjndfjjhvfvksufhfvi, 1)
		$a_01_2 = {41 70 70 44 61 74 61 20 26 20 43 68 72 28 41 73 63 28 78 69 66 64 76 68 62 76 62 64 6a 62 76 68 66 64 6a 76 62 6a 68 66 64 6a 76 6b 78 29 20 2d 20 31 29 } //1 AppData & Chr(Asc(xifdvhbvbdjbvhfdjvbjhfdjvkx) - 1)
		$a_01_3 = {3d 20 43 68 72 28 35 30 29 20 2b 20 43 68 72 28 34 38 29 20 2b 20 43 68 72 28 34 38 29 } //1 = Chr(50) + Chr(48) + Chr(48)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}