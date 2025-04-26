
rule TrojanDropper_O97M_Hancitor_JAJ_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.JAJ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {41 73 20 4f 70 74 69 6f 6e 73 2e 44 65 66 61 75 6c 74 46 69 6c 65 50 61 74 68 28 77 64 54 65 6d 70 46 69 6c 65 50 61 74 68 29 20 26 20 22 5c 53 74 61 74 69 63 2e 64 6c 6c 22 } //1 As Options.DefaultFilePath(wdTempFilePath) & "\Static.dll"
		$a_01_1 = {53 75 62 20 68 68 68 68 68 28 29 } //1 Sub hhhhh()
		$a_01_2 = {44 69 6d 20 70 6f 73 6c 20 41 73 20 53 74 72 69 6e 67 } //1 Dim posl As String
		$a_01_3 = {49 66 20 44 69 72 28 4c 65 66 74 28 6a 6f 73 2c 20 6e 74 67 73 29 20 26 20 79 65 72 2c 20 76 62 44 69 72 65 63 74 6f 72 79 29 20 3d 20 22 22 20 54 68 65 6e } //1 If Dir(Left(jos, ntgs) & yer, vbDirectory) = "" Then
		$a_01_4 = {43 61 6c 6c 20 47 65 74 6d 65 28 4c 65 66 74 28 6b 6c 61 73 2c 20 6e 74 67 73 29 20 26 20 79 65 72 29 } //1 Call Getme(Left(klas, ntgs) & yer)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}