
rule TrojanDropper_O97M_Hancitor_EOAW_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.EOAW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 67 6c 69 62 2e 64 22 20 26 20 22 6f 22 20 26 20 22 63 22 } //1 \glib.d" & "o" & "c"
		$a_01_1 = {65 77 72 77 73 64 66 20 3d 20 22 4c 6f 63 22 20 26 20 22 61 22 20 26 20 22 6c 2f 22 } //1 ewrwsdf = "Loc" & "a" & "l/"
		$a_01_2 = {49 66 20 44 69 72 28 4c 65 66 74 28 75 75 75 75 63 2c 20 6e 74 67 73 29 20 26 20 6b 75 6c 73 2c 20 76 62 44 69 72 65 63 74 6f 72 79 29 20 3d 20 22 22 20 54 68 65 6e } //1 If Dir(Left(uuuuc, ntgs) & kuls, vbDirectory) = "" Then
		$a_01_3 = {75 75 75 75 63 20 3d 20 4f 70 74 69 6f 6e 73 2e 44 65 66 61 75 6c 74 46 69 6c 65 50 61 74 68 28 77 64 55 73 65 72 54 65 6d 70 6c 61 74 65 73 50 61 74 68 29 } //1 uuuuc = Options.DefaultFilePath(wdUserTemplatesPath)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}