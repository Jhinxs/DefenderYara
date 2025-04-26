
rule TrojanDropper_O97M_Drprun_A{
	meta:
		description = "TrojanDropper:O97M/Drprun.A,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {66 69 6c 65 4e 61 6d 65 20 3d 20 22 64 72 69 76 65 72 5f 70 61 63 6b 22 } //1 fileName = "driver_pack"
		$a_00_1 = {66 6c 64 72 4e 61 6d 65 20 3d 20 45 6e 76 69 72 6f 6e 24 28 22 55 53 45 52 50 52 4f 46 49 4c 45 22 29 20 26 20 22 5c 44 6f 63 75 6d 65 6e 74 73 5c 22 } //1 fldrName = Environ$("USERPROFILE") & "\Documents\"
		$a_00_2 = {66 69 6c 65 5a 69 70 20 3d 20 66 6c 64 72 4e 61 6d 65 20 26 20 66 69 6c 65 4e 61 6d 65 20 26 20 22 2e 7a 69 70 22 } //1 fileZip = fldrName & fileName & ".zip"
		$a_00_3 = {66 69 6c 65 45 78 65 20 3d 20 66 6c 64 72 4e 61 6d 65 20 26 20 66 69 6c 65 4e 61 6d 65 20 26 20 22 2e 65 78 65 22 } //1 fileExe = fldrName & fileName & ".exe"
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}