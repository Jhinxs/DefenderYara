
rule TrojanDropper_O97M_Hancitor_HAF_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.HAF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {79 61 2e 77 61 76 } //1 ya.wav
		$a_01_1 = {70 75 73 68 73 74 72 20 3d 20 22 5c 57 22 20 26 20 22 30 72 64 2e 64 22 } //1 pushstr = "\W" & "0rd.d"
		$a_01_2 = {66 61 20 3d 20 66 70 73 20 26 20 22 75 22 20 26 20 6a 73 64 20 26 20 22 6c 6c 22 20 26 20 68 68 } //1 fa = fps & "u" & jsd & "ll" & hh
		$a_01_3 = {44 69 6d 20 72 65 67 73 72 76 61 20 41 73 20 4e 65 77 20 53 68 65 6c 6c 33 32 2e 53 68 65 6c 6c } //1 Dim regsrva As New Shell32.Shell
		$a_01_4 = {26 20 70 75 73 68 73 74 72 20 26 20 22 6c 6c 22 20 26 20 22 2c 22 20 26 20 22 44 6c 6c 22 20 26 20 22 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 22 } //1 & pushstr & "ll" & "," & "Dll" & "UnregisterServer"
		$a_01_5 = {43 61 6c 6c 20 72 65 67 73 72 76 61 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 28 66 61 2c 20 79 79 2c 20 22 20 22 2c 20 53 57 5f 53 48 4f 57 4e 4f 52 4d 41 4c 29 } //1 Call regsrva.ShellExecute(fa, yy, " ", SW_SHOWNORMAL)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}