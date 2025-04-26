
rule TrojanDownloader_O97M_Dridex_BTK_MTB{
	meta:
		description = "TrojanDownloader:O97M/Dridex.BTK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 0d 00 00 "
		
	strings :
		$a_01_0 = {46 69 6e 64 57 69 6e 64 6f 77 45 78 41 } //1 FindWindowExA
		$a_01_1 = {75 73 65 72 33 32 2e 64 6c 6c } //1 user32.dll
		$a_01_2 = {43 68 72 57 28 43 4c 6e 67 28 28 4e 6f 74 } //1 ChrW(CLng((Not
		$a_01_3 = {44 65 62 75 67 2e 50 72 69 6e 74 } //1 Debug.Print
		$a_01_4 = {3d 20 4a 6f 69 6e 28 41 72 72 61 79 28 43 68 72 28 43 4c 6e 67 } //1 = Join(Array(Chr(CLng
		$a_01_5 = {3d 20 4c 65 6e 28 4a 6f 69 6e 28 41 72 72 61 79 28 5a 6f 49 63 74 66 71 61 36 44 } //1 = Len(Join(Array(ZoIctfqa6D
		$a_01_6 = {3d 20 4c 65 6e 28 4a 6f 69 6e 28 41 72 72 61 79 28 4e 33 4c 32 37 31 56 47 36 6c 48 } //1 = Len(Join(Array(N3L271VG6lH
		$a_01_7 = {3d 20 4c 65 6e 28 4a 6f 69 6e 28 41 72 72 61 79 28 57 44 72 54 33 77 65 4a 44 59 4f 65 67 44 } //1 = Len(Join(Array(WDrT3weJDYOegD
		$a_01_8 = {3d 20 4c 65 6e 28 4a 6f 69 6e 28 41 72 72 61 79 28 72 71 76 32 47 5f 47 6b 51 63 5f 46 30 38 } //1 = Len(Join(Array(rqv2G_GkQc_F08
		$a_01_9 = {3d 20 4d 4f 4e 32 6d 49 32 51 2e 53 57 47 45 5f 45 56 56 } //1 = MON2mI2Q.SWGE_EVV
		$a_01_10 = {3d 20 56 31 6f 49 73 5f 72 58 49 2e 4f 69 30 78 50 65 63 62 45 30 4c 30 5a 79 } //1 = V1oIs_rXI.Oi0xPecbE0L0Zy
		$a_01_11 = {3d 20 7a 7a 39 50 30 5f 51 43 44 5f 48 31 46 42 2e 54 71 48 38 42 30 4b } //1 = zz9P0_QCD_H1FB.TqH8B0K
		$a_01_12 = {3d 20 44 69 48 43 76 31 33 65 2e 58 42 47 4c 33 5f 4c 79 56 66 5f 64 37 37 5f 47 64 4d } //1 = DiHCv13e.XBGL3_LyVf_d77_GdM
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1) >=7
 
}