
rule TrojanDownloader_O97M_Dridex_PCA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Dridex.PCA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_00_0 = {4a 6f 69 6e 28 41 72 72 61 79 28 43 68 72 57 28 43 4c 6e 67 28 28 78 6c 45 78 63 65 6c 33 20 58 6f 72 20 28 28 } //1 Join(Array(ChrW(CLng((xlExcel3 Xor ((
		$a_00_1 = {44 65 62 75 67 2e 50 72 69 6e 74 20 4d 69 32 33 47 75 39 66 54 6d 34 6d 66 4d 4c 76 76 } //1 Debug.Print Mi23Gu9fTm4mfMLvv
		$a_00_2 = {3d 20 41 62 73 28 43 4c 6e 67 28 28 4e 6f 74 } //1 = Abs(CLng((Not
		$a_00_3 = {41 73 63 28 4c 65 66 74 24 28 4d 69 64 24 28 6c 52 54 51 5f 71 4b 6e 5f 69 4d 51 34 5f 35 6a 52 2c 20 49 4d 54 4d 57 30 62 33 5a 49 30 76 41 29 } //1 Asc(Left$(Mid$(lRTQ_qKn_iMQ4_5jR, IMTMW0b3ZI0vA)
		$a_00_4 = {4c 69 62 20 22 75 73 65 72 33 32 2e 64 6c 6c 22 20 41 6c 69 61 73 20 22 50 6f 73 74 4d 65 73 73 61 67 65 41 22 20 28 42 79 56 61 6c 20 59 78 47 5a 41 5f 4c 55 7a 5f 48 32 4e 69 20 41 73 20 4c 6f 6e 67 } //1 Lib "user32.dll" Alias "PostMessageA" (ByVal YxGZA_LUz_H2Ni As Long
		$a_00_5 = {4c 69 62 20 22 75 73 65 72 33 32 2e 64 6c 6c 22 20 41 6c 69 61 73 20 22 46 69 6e 64 57 69 6e 64 6f 77 45 78 41 22 20 28 42 79 56 61 6c 20 76 6e 68 6d 5f 32 59 63 5f 33 78 4e 5f 79 33 76 6a 20 41 73 20 4c 6f 6e 67 } //1 Lib "user32.dll" Alias "FindWindowExA" (ByVal vnhm_2Yc_3xN_y3vj As Long
		$a_00_6 = {45 6e 76 69 72 6f 6e 28 56 35 75 34 6f 5f 45 58 6d 5f 35 79 67 5f 46 37 54 34 29 } //1 Environ(V5u4o_EXm_5yg_F7T4)
		$a_00_7 = {2e 43 72 65 61 74 65 20 44 64 7a 70 72 30 79 2c 20 4e 75 6c 6c 2c 20 43 47 30 56 75 5f 30 6b 4c 5f 59 59 4b 5f 46 50 30 } //1 .Create Ddzpr0y, Null, CG0Vu_0kL_YYK_FP0
		$a_00_8 = {43 68 72 57 28 43 4c 6e 67 28 28 41 73 63 28 22 20 22 29 29 29 } //1 ChrW(CLng((Asc(" ")))
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1) >=9
 
}
rule TrojanDownloader_O97M_Dridex_PCA_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Dridex.PCA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_00_0 = {43 4c 6e 67 28 28 78 6c 50 72 69 6d 61 72 79 20 58 6f 72 20 78 6c 57 6f 72 6b 73 68 65 65 74 34 29 29 } //1 CLng((xlPrimary Xor xlWorksheet4))
		$a_00_1 = {44 65 62 75 67 2e 50 72 69 6e 74 20 59 30 73 30 41 52 78 65 62 52 51 76 79 57 } //1 Debug.Print Y0s0ARxebRQvyW
		$a_00_2 = {3d 20 41 62 73 28 43 4c 6e 67 28 28 4e 6f 74 20 78 6c 43 6c 69 70 62 6f 61 72 64 46 6f 72 6d 61 74 45 6d 62 65 64 64 65 64 4f 62 6a 65 63 74 29 29 29 } //1 = Abs(CLng((Not xlClipboardFormatEmbeddedObject)))
		$a_00_3 = {2e 43 72 65 61 74 65 20 53 6c 34 61 5f 49 4c 49 6a 2c 20 4e 75 6c 6c 2c 20 49 4d 32 37 43 5f 46 49 57 30 } //1 .Create Sl4a_ILIj, Null, IM27C_FIW0
		$a_00_4 = {4c 69 62 20 22 75 73 65 72 33 32 2e 64 6c 6c 22 20 41 6c 69 61 73 20 22 50 6f 73 74 4d 65 73 73 61 67 65 41 22 20 28 42 79 56 61 6c 20 5a 48 49 50 5f 58 76 7a 77 5f 38 7a 6f 20 41 73 20 4c 6f 6e 67 2c 20 42 79 56 61 6c 20 4a 30 6d 37 35 52 51 20 41 73 20 4c 6f 6e 67 } //1 Lib "user32.dll" Alias "PostMessageA" (ByVal ZHIP_Xvzw_8zo As Long, ByVal J0m75RQ As Long
		$a_00_5 = {4c 69 62 20 22 75 73 65 72 33 32 2e 64 6c 6c 22 20 41 6c 69 61 73 20 22 46 69 6e 64 57 69 6e 64 6f 77 45 78 41 22 20 28 42 79 56 61 6c 20 4b 56 36 72 5f 70 4c 78 4c 5f 33 30 44 5f 30 62 4c 46 20 41 73 20 4c 6f 6e 67 } //1 Lib "user32.dll" Alias "FindWindowExA" (ByVal KV6r_pLxL_30D_0bLF As Long
		$a_00_6 = {4a 6f 69 6e 28 41 72 72 61 79 28 52 4c 42 68 68 57 76 73 72 7a 77 66 78 32 4e 43 20 5e 20 64 77 47 45 43 55 43 4c } //1 Join(Array(RLBhhWvsrzwfx2NC ^ dwGECUCL
		$a_03_7 = {29 29 29 29 20 2a 20 52 6e 64 20 2b 20 43 4c 6e 67 28 28 [0-05] 20 58 6f 72 20 [0-06] 29 29 29 29 } //1
		$a_00_8 = {26 20 43 68 72 28 43 4c 6e 67 28 28 41 73 63 28 22 20 22 29 29 29 29 20 26 20 43 68 72 57 28 43 4c 6e 67 28 28 28 } //1 & Chr(CLng((Asc(" ")))) & ChrW(CLng(((
		$a_00_9 = {41 73 63 28 4c 65 66 74 24 28 4d 69 64 24 28 6e 54 33 6f 5f 72 64 64 70 5f 66 6a 6f 49 2c 20 4c 49 48 69 38 6c 36 55 46 32 4b 79 52 6d 72 71 29 2c 20 43 4c 6e 67 28 28 } //1 Asc(Left$(Mid$(nT3o_rddp_fjoI, LIHi8l6UF2KyRmrq), CLng((
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_03_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1) >=10
 
}