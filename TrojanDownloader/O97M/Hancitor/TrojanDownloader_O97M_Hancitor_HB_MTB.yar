
rule TrojanDownloader_O97M_Hancitor_HB_MTB{
	meta:
		description = "TrojanDownloader:O97M/Hancitor.HB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {44 69 72 28 52 6f 6f 74 50 61 74 68 20 26 20 22 5c 32 32 2e 6d 70 34 22 29 } //1 Dir(RootPath & "\22.mp4")
		$a_02_1 = {3d 20 66 73 6f 2e 47 65 74 46 6f 6c 64 65 72 28 [0-0a] 29 } //1
		$a_02_2 = {50 61 74 68 20 26 20 22 5c [0-05] 2e 64 6c 6c 2c 53 74 61 72 74 22 2c } //1
		$a_02_3 = {53 68 65 6c 6c 45 78 65 63 75 74 65 28 22 72 75 6e 64 22 20 26 20 22 6c 6c [0-05] 33 32 2e 65 78 65 22 } //1
		$a_00_4 = {6e 74 67 73 29 20 26 20 22 4c 6f 63 22 20 26 20 22 61 6c 5c 54 65 22 20 26 20 22 6d 70 22 } //1 ntgs) & "Loc" & "al\Te" & "mp"
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}