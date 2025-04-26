
rule TrojanDropper_O97M_Hancitor_JAC_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.JAC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {26 20 22 6d 22 20 26 20 22 70 22 20 41 73 20 57 6f 72 64 2e 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 41 70 70 6c 69 63 61 74 69 6f 6e 2e 53 74 61 72 74 75 70 50 61 74 68 20 26 20 22 5c 53 74 61 74 69 63 2e 64 6c 6c } //1 & "m" & "p" As Word.ActiveDocument.Application.StartupPath & "\Static.dll
		$a_01_1 = {70 6f 73 6c 20 3d 20 57 6f 72 64 2e 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 41 70 70 6c 69 63 61 74 69 6f 6e 2e 53 74 61 72 74 75 70 50 61 74 68 } //1 posl = Word.ActiveDocument.Application.StartupPath
		$a_01_2 = {53 75 62 20 68 68 68 68 68 28 29 } //1 Sub hhhhh()
		$a_01_3 = {44 69 6d 20 70 6f 73 6c 20 41 73 20 53 74 72 69 6e 67 } //1 Dim posl As String
		$a_01_4 = {43 61 6c 6c 20 63 76 62 63 } //1 Call cvbc
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}