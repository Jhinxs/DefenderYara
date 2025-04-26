
rule TrojanDropper_O97M_Obfuse_QZ_MTB{
	meta:
		description = "TrojanDropper:O97M/Obfuse.QZ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {74 65 6d 70 50 61 74 68 20 3d 20 45 6e 76 69 72 6f 6e 28 22 41 4c 4c 55 53 45 52 53 50 52 4f 46 49 4c 45 22 29 20 26 20 43 68 72 28 39 32 29 20 26 20 52 6e 64 20 26 20 22 2e 6a 73 65 22 } //1 tempPath = Environ("ALLUSERSPROFILE") & Chr(92) & Rnd & ".jse"
		$a_01_1 = {4f 70 65 6e 20 74 65 6d 70 50 61 74 68 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 } //1 Open tempPath For Output As #
		$a_01_2 = {6f 62 6a 53 68 65 6c 6c 41 70 70 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 20 74 65 6d 70 50 61 74 68 } //1 objShellApp.ShellExecute tempPath
		$a_01_3 = {49 66 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 50 61 74 68 20 3d 20 22 22 20 54 68 65 6e } //1 If ActiveDocument.Path = "" Then
		$a_01_4 = {43 61 6c 6c 20 46 69 6c 65 53 61 76 65 41 73 } //1 Call FileSaveAs
		$a_03_5 = {50 72 69 6e 74 20 23 ?? 2c 20 [0-08] 2e 43 6d 64 2e 43 61 70 74 69 6f 6e } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1) >=6
 
}