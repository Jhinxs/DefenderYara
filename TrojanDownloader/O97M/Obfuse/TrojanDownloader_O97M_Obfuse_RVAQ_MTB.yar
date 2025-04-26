
rule TrojanDownloader_O97M_Obfuse_RVAQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RVAQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 7a 62 7a 69 79 6e 6b 6f 71 65 79 62 28 22 35 37 35 33 36 33 37 32 36 39 37 30 22 29 20 26 20 7a 62 7a 69 79 6e 6b 6f 71 65 79 62 28 22 37 34 32 65 35 33 36 38 36 35 36 63 36 63 22 29 29 2e 52 75 6e } //1 CreateObject(zbziynkoqeyb("575363726970") & zbziynkoqeyb("742e5368656c6c")).Run
		$a_01_1 = {43 68 72 24 28 56 61 6c 28 22 26 48 22 20 26 20 4d 69 64 24 28 63 6d 61 7a 78 64 75 63 66 67 6e 6d 2c 20 79 6a 7a 62 6a 76 69 70 69 66 6a 6c 2c 20 32 29 29 29 } //1 Chr$(Val("&H" & Mid$(cmazxducfgnm, yjzbjvipifjl, 2)))
		$a_01_2 = {2e 4f 70 65 6e 20 6b 73 6f 6f 79 6c 6d 79 62 6f 67 66 28 22 34 37 34 35 35 34 22 29 2c 20 6e 61 6f 74 6b 74 78 6c 6b 6e 70 6a 78 2c 20 46 61 6c 73 65 } //1 .Open ksooylmybogf("474554"), naotktxlknpjx, False
		$a_01_3 = {45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 26 20 22 5c 22 20 26 20 64 6c 61 6b 61 6f 6b 6b 6c 6e 73 72 72 75 73 } //1 Environ("TEMP") & "\" & dlakaokklnsrrus
		$a_01_4 = {41 75 74 6f 4f 70 65 6e 28 29 0d 0a 67 6d 65 61 7a 79 72 79 6b } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}