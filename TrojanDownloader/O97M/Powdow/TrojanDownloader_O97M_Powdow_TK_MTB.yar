
rule TrojanDownloader_O97M_Powdow_TK_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.TK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {53 65 74 20 77 73 68 53 68 65 6c 6c 20 3d 20 6f 62 6a 4f 4c 2e 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 73 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //1 Set wshShell = objOL.CreateObject("Wscript.Shell")
		$a_01_1 = {75 73 65 72 70 72 6f 66 69 6c 65 20 3d 20 77 73 68 53 68 65 6c 6c 2e 45 78 70 61 6e 64 45 6e 76 69 72 6f 6e 6d 65 6e 74 53 74 72 69 6e 67 73 28 22 25 75 73 65 72 70 72 6f 66 69 6c 65 25 22 29 } //1 userprofile = wshShell.ExpandEnvironmentStrings("%userprofile%")
		$a_01_2 = {66 69 6e 61 6c 5f 73 74 72 20 3d 20 66 69 6e 61 6c 5f 73 74 72 20 26 20 } //1 final_str = final_str & 
		$a_01_3 = {3d 20 63 6f 6d 6d 61 6e 64 6f 5f 61 5f 72 75 6e 65 61 72 32 20 26 20 22 20 27 22 20 26 20 64 69 72 65 63 74 6f 72 69 6f 20 26 20 22 27 22 } //1 = commando_a_runear2 & " '" & directorio & "'"
		$a_01_4 = {77 73 68 53 68 65 6c 6c 2e 52 75 6e 20 66 69 6e 61 6c 5f 63 6f 6d 61 6e 64 6f } //1 wshShell.Run final_comando
		$a_01_5 = {3d 20 75 73 65 72 70 72 6f 66 69 6c 65 20 26 20 42 61 73 65 36 34 44 65 63 6f 64 65 28 22 58 47 6c 68 64 47 39 33 61 79 35 77 63 7a 45 3d 22 2c 20 46 61 6c 73 65 29 } //1 = userprofile & Base64Decode("XGlhdG93ay5wczE=", False)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}