
rule TrojanDownloader_WinNT_Jaxmytne_A{
	meta:
		description = "TrojanDownloader:WinNT/Jaxmytne.A,SIGNATURE_TYPE_JAVAHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {4a 61 58 6d 59 74 74 6e 65 68 64 37 30 54 56 32 72 61 63 34 4f 41 3d 3d } //3 JaXmYttnehd70TV2rac4OA==
		$a_01_1 = {38 43 31 44 59 2f 6b 4b 78 4d 6b 61 63 73 71 31 43 55 4c 2f 68 67 3d 3d } //1 8C1DY/kKxMkacsq1CUL/hg==
		$a_01_2 = {30 57 37 31 2f 66 51 5a 30 73 74 54 34 6f 4e 31 6f 54 69 30 4c 50 35 66 4f 68 6d 79 4f 30 43 71 59 71 72 57 67 4f 38 36 72 42 63 3d } //1 0W71/fQZ0stT4oN1oTi0LP5fOhmyO0CqYqrWgO86rBc=
		$a_01_3 = {34 32 62 75 4e 61 4b 4a 79 6b 66 54 77 4c 6c 57 50 58 52 64 44 65 77 76 70 35 41 41 67 62 51 4b 7a 78 76 4f 61 53 2f 76 56 49 4e 53 38 57 7a 77 46 4c 71 46 56 51 63 6a 71 58 4e 71 73 39 33 6f } //1 42buNaKJykfTwLlWPXRdDewvp5AAgbQKzxvOaS/vVINS8WzwFLqFVQcjqXNqs93o
		$a_01_4 = {68 70 36 32 73 50 30 57 77 79 55 63 6f 36 62 71 33 6e 77 42 43 67 3d 3d } //1 hp62sP0WwyUco6bq3nwBCg==
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}