
rule TrojanDownloader_O97M_Obfuse_RG_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RG!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {43 75 72 44 65 70 20 3d 20 43 75 72 44 65 70 20 2b 20 37 34 2e 31 31 31 33 32 37 36 35 39 37 38 20 2a 20 43 65 69 6c 28 33 2e 39 36 32 33 32 35 33 32 39 33 32 31 39 34 20 2b 20 32 31 33 2e 32 39 39 33 32 39 35 34 33 38 20 2a 20 47 65 74 42 61 63 6b 29 } //1 CurDep = CurDep + 74.11132765978 * Ceil(3.96232532932194 + 213.2993295438 * GetBack)
		$a_01_1 = {76 69 73 69 74 63 6d 64 2e 57 72 69 74 65 4c 69 6e 65 20 28 55 73 65 72 46 6f 72 6d 32 2e 54 72 61 76 65 6c 49 73 6c 61 6e 64 2e 43 61 70 74 69 6f 6e 29 } //1 visitcmd.WriteLine (UserForm2.TravelIsland.Caption)
		$a_01_2 = {53 65 67 6d 65 6e 74 20 23 } //1 Segment #
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Obfuse_RG_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RG!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {23 49 66 20 57 69 6e 36 34 20 54 68 65 6e } //1 #If Win64 Then
		$a_01_1 = {50 72 69 76 61 74 65 20 44 65 63 6c 61 72 65 20 50 74 72 53 61 66 65 20 46 75 6e 63 74 69 6f 6e 20 57 69 64 65 43 68 61 72 54 6f 4d 75 6c 74 69 42 79 74 65 20 4c 69 62 20 22 6b 65 72 6e 65 6c 33 32 22 20 28 42 79 56 61 6c } //1 Private Declare PtrSafe Function WideCharToMultiByte Lib "kernel32" (ByVal
		$a_03_2 = {2e 56 61 6c 75 65 20 3d 20 57 53 2e 43 65 6c 6c 73 28 [0-10] 29 2e 56 61 6c 75 65 } //1
		$a_03_3 = {57 6f 72 6b 62 6f 6f 6b 73 28 22 [0-08] 2e 78 6c 73 22 29 2e 43 6c 6f 73 65 } //1
		$a_01_4 = {52 65 70 6c 61 63 65 28 52 65 70 6c 61 63 65 28 54 6f 42 61 73 65 36 34 2c } //1 Replace(Replace(ToBase64,
		$a_01_5 = {54 6f 42 61 73 65 36 34 20 3d 20 2e 74 65 78 74 } //1 ToBase64 = .text
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}