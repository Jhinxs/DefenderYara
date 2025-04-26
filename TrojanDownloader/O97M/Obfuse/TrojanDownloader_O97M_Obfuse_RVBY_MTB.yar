
rule TrojanDownloader_O97M_Obfuse_RVBY_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RVBY!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {3d 22 70 22 3a [0-1e] 3d 22 6f 22 3a [0-1e] 3d 22 77 22 3a [0-1e] 3d 22 65 22 3a [0-1e] 3d 22 72 22 3a [0-1e] 3d 22 73 22 3a [0-1e] 3d 22 68 22 3a [0-1e] 3d 22 65 22 3a [0-1e] 3d 22 6c 22 3a [0-1e] 3d 22 6c 22 } //1
		$a_01_1 = {2d 65 73 71 62 66 61 66 67 61 69 61 61 67 61 63 67 61 74 67 62 6c 61 68 63 61 6c 71 62 70 61 67 69 61 61 67 62 6c 61 67 6d 61 64 61 61 67 61 65 34 61 7a 71 62 30 61 63 34 61 76 77 62 6c 61 67 69 61 71 77 62 73 61 67 6b 61 7a 71 62 75 61 68 71 61 6b 71 61 75 61 65 71 61 62 77 62 33 61 67 34 61 62 61 62 76 61 67 65 61 7a 61 62 74 61 68 71 61 63 67 62 70 61 67 34 61 7a 77 61 75 61 65 6b 61 62 67 62 32 61 67 38 61 61 77 62 6c 61 63 67 61 6a 77 61 6e 61 61 6f 61 61 61 62 30 61 68 71 61 63 61 } //1 -esqbfafgaiaagacgatgblahcalqbpagiaagblagmadaagae4azqb0ac4avwblagiaqwbsagkazqbuahqakqauaeqabwb3ag4ababvageazabtahqacgbpag4azwauaekabgb2ag8aawblacgajwanaaoaaab0ahqaca
		$a_01_2 = {62 68 76 69 78 6c 2e 72 75 6e 62 75 64 62 61 71 6f 61 79 64 7a 6f 62 6e 6f 6a 64 61 65 64 75 67 62 72 6f 6c 79 2c 38 35 37 31 30 3a } //1 bhvixl.runbudbaqoaydzobnojdaedugbroly,85710:
		$a_01_3 = {73 75 62 61 75 74 6f 5f 6f 70 65 6e 28 29 } //1 subauto_open()
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}