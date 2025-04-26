
rule TrojanDropper_O97M_Hancitor_AJS_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.AJS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {26 20 22 5c 57 30 72 64 2e 64 6c 6c 22 29 20 3d 20 22 22 20 54 68 65 6e } //1 & "\W0rd.dll") = "" Then
		$a_03_1 = {53 75 62 20 67 6f 74 6f 64 6f 77 6e 28 29 90 0c 02 00 43 61 6c 6c 20 67 6f 74 6f 74 77 6f } //1
		$a_01_2 = {26 20 22 5c 79 61 2e 77 61 76 22 20 41 73 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 41 74 74 61 63 68 65 64 54 65 6d 70 6c 61 74 65 2e 50 61 74 68 20 26 20 22 5c 57 30 72 64 2e 64 6c 6c 22 } //1 & "\ya.wav" As ActiveDocument.AttachedTemplate.Path & "\W0rd.dll"
		$a_01_3 = {49 66 20 44 69 72 28 4c 65 66 74 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 41 74 74 61 63 68 65 64 54 65 6d 70 6c 61 74 65 2e 50 61 74 68 2c 20 6e 74 67 73 29 20 26 20 22 4c 6f 63 22 20 26 20 22 61 6c 5c 54 65 22 20 26 20 22 6d 70 22 2c 20 76 62 44 69 72 65 63 74 6f 72 79 29 20 3d 20 22 22 20 54 68 65 6e } //1 If Dir(Left(ActiveDocument.AttachedTemplate.Path, ntgs) & "Loc" & "al\Te" & "mp", vbDirectory) = "" Then
		$a_01_4 = {26 20 70 75 73 68 73 74 72 20 26 20 22 6c 6c 2c 44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 22 } //1 & pushstr & "ll,DllUnregisterServer"
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}