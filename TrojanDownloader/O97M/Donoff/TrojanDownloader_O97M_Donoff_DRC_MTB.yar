
rule TrojanDownloader_O97M_Donoff_DRC_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.DRC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {2e 77 72 69 74 65 20 78 48 74 74 70 2e 72 65 73 70 6f 6e 73 65 42 6f 64 79 } //1 .write xHttp.responseBody
		$a_03_1 = {6d 61 69 6c 73 65 6e 64 69 6e 67 2e 73 69 74 65 2f 48 61 70 70 79 5f 43 53 2f 68 61 70 70 79 46 75 6e 2e 65 78 65 22 2c 20 46 61 6c 73 65 90 0a 44 00 2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 22 68 74 74 70 73 3a 2f 2f } //1
		$a_03_2 = {57 69 6e 64 6f 77 73 2f 54 65 6d 70 2f 4d 69 63 72 6f 73 6f 66 74 20 57 6f 72 6c 64 2e 65 78 65 22 90 0a 32 00 2e 73 61 76 65 74 6f 66 69 6c 65 20 22 43 3a 2f 2f } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Donoff_DRC_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Donoff.DRC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {70 4b 79 79 4c 37 77 69 45 66 67 59 51 49 56 4e 79 4e 65 5f 66 66 71 70 5f } //1 pKyyL7wiEfgYQIVNyNe_ffqp_
		$a_01_1 = {46 57 79 46 42 4e 55 6f 37 69 5f 4f 63 67 5f 63 5f 39 5f 72 42 6a 7a 5f 71 39 76 45 33 6e 4a 4a 4f 62 34 36 7a 73 63 45 35 75 5f 46 5f 6d 59 46 70 47 5f 41 47 37 38 } //1 FWyFBNUo7i_Ocg_c_9_rBjz_q9vE3nJJOb46zscE5u_F_mYFpG_AG78
		$a_01_2 = {64 5f 5f 5f 66 73 61 28 31 30 39 29 20 26 20 64 5f 5f 5f 66 73 61 28 31 30 35 29 20 26 20 64 5f 5f 5f 66 73 61 28 38 39 29 20 26 20 64 5f 5f 5f 66 73 61 28 31 33 36 29 20 26 20 64 5f 5f 5f 66 73 61 28 31 32 37 29 20 26 20 64 5f 5f 5f 66 73 61 28 31 33 34 29 20 26 20 64 5f 5f 5f 66 73 61 28 31 33 38 29 20 26 20 64 5f 5f 5f 66 73 61 28 36 38 29 20 26 20 64 5f 5f 5f 66 73 61 28 31 33 37 29 20 26 20 64 5f 5f 5f 66 73 61 28 31 32 36 29 20 26 20 64 5f 5f 5f 66 73 61 28 31 32 33 29 20 26 20 64 5f 5f 5f 66 73 61 28 31 33 30 29 20 26 20 64 5f 5f 5f 66 73 61 28 31 33 30 29 } //1 d___fsa(109) & d___fsa(105) & d___fsa(89) & d___fsa(136) & d___fsa(127) & d___fsa(134) & d___fsa(138) & d___fsa(68) & d___fsa(137) & d___fsa(126) & d___fsa(123) & d___fsa(130) & d___fsa(130)
		$a_01_3 = {2e 52 75 6e 28 57 47 4c 46 4c 72 46 39 76 33 63 5f 2c 20 77 67 57 37 42 70 54 5f 5f 5f 73 5f 47 41 43 32 79 64 39 4f 29 } //1 .Run(WGLFLrF9v3c_, wgW7BpT___s_GAC2yd9O)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}