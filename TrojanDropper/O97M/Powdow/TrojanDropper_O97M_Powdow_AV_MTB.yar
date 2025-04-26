
rule TrojanDropper_O97M_Powdow_AV_MTB{
	meta:
		description = "TrojanDropper:O97M/Powdow.AV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {22 2e 6a 73 65 22 } //1 ".jse"
		$a_01_1 = {26 20 22 2e 64 6f 63 22 } //1 & ".doc"
		$a_01_2 = {3d 20 45 6e 76 69 72 6f 6e 28 22 41 50 50 44 41 54 41 22 29 } //1 = Environ("APPDATA")
		$a_01_3 = {26 20 22 5c 22 20 26 20 52 6e 64 20 26 } //1 & "\" & Rnd &
		$a_01_4 = {3d 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 53 68 61 70 65 73 28 31 29 2e 54 65 78 74 46 72 61 6d 65 2e 54 65 78 74 52 61 6e 67 65 } //1 = ActiveDocument.Shapes(1).TextFrame.TextRange
		$a_03_5 = {2e 4e 65 78 74 [0-08] 4e 65 78 74 20 69 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1) >=6
 
}