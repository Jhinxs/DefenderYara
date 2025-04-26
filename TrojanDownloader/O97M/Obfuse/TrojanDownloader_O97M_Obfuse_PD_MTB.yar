
rule TrojanDownloader_O97M_Obfuse_PD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_03_0 = {26 20 43 68 72 24 28 56 61 6c 28 22 26 48 22 20 26 20 4d 69 64 24 28 [0-20] 2c 20 [0-20] 2c 20 32 29 29 29 } //1
		$a_03_1 = {3d 20 31 20 54 6f 20 4c 65 6e 28 [0-25] 29 20 53 74 65 70 20 31 } //1
		$a_01_2 = {26 20 22 39 22 } //1 & "9"
		$a_01_3 = {26 20 22 34 64 } //1 & "4d
		$a_03_4 = {33 33 33 34 33 33 [0-14] 26 } //1
		$a_01_5 = {26 20 22 35 61 34 } //1 & "5a4
		$a_01_6 = {3d 20 46 69 78 28 } //1 = Fix(
		$a_01_7 = {3d 20 49 73 4e 75 6c 6c 28 22 22 29 } //1 = IsNull("")
		$a_01_8 = {3d 20 22 31 4e 6f 72 6d 61 6c 2e 54 68 69 73 44 6f 63 75 6d 65 6e 74 22 } //1 = "1Normal.ThisDocument"
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}
rule TrojanDownloader_O97M_Obfuse_PD_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {3d 20 45 6e 76 69 72 6f 6e 28 22 74 65 6d 70 22 29 20 26 20 22 5c 7e 24 4d 79 5f 43 56 7e 22 20 26 20 22 2e 22 20 26 20 22 65 78 22 20 26 20 22 65 22 } //1 = Environ("temp") & "\~$My_CV~" & "." & "ex" & "e"
		$a_00_1 = {53 65 74 20 77 73 68 53 68 65 6c 6c 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 73 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //1 Set wshShell = CreateObject("Wscript.Shell")
		$a_00_2 = {77 73 68 53 68 65 6c 6c 2e 52 75 6e 20 66 70 } //1 wshShell.Run fp
		$a_00_3 = {44 4d 2e 63 72 65 61 74 65 45 6c 65 6d 65 6e 74 28 22 74 6d 70 22 29 } //1 DM.createElement("tmp")
		$a_00_4 = {44 61 74 61 54 79 70 65 20 3d 20 22 62 69 6e 2e 62 61 73 65 36 34 22 } //1 DataType = "bin.base64"
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}