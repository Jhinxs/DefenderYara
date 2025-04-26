
rule TrojanDownloader_O97M_Donoff_ALT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.ALT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 69 6b 52 63 54 66 6a 28 63 44 52 57 64 6e 43 29 } //1 Public Function ikRcTfj(cDRWdnC)
		$a_01_1 = {69 6b 52 63 54 66 6a 20 3d 20 52 65 70 6c 61 63 65 28 63 44 52 57 64 6e 43 2c 20 22 30 33 4e 63 40 3c 24 7d 28 63 70 54 48 76 6c 23 75 2a 33 5d 7b 2a 2e 4f 38 33 71 63 7a 36 63 50 6a 7e 7e 71 43 38 62 37 22 2c 20 22 22 29 } //1 ikRcTfj = Replace(cDRWdnC, "03Nc@<$}(cpTHvl#u*3]{*.O83qcz6cPj~~qC8b7", "")
		$a_01_2 = {53 65 74 20 4d 6b 79 70 4d 56 47 20 3d 20 46 73 7a 75 62 69 53 2e 65 78 45 63 28 22 43 3a 5c 57 69 6e 64 6f 77 73 5c 45 78 70 6c 6f 72 65 72 20 22 20 26 20 78 61 4d 63 57 71 67 29 } //1 Set MkypMVG = FszubiS.exEc("C:\Windows\Explorer " & xaMcWqg)
		$a_01_3 = {49 66 20 45 72 72 20 3c 3e 20 30 20 54 68 65 6e 20 4d 73 67 42 6f 78 20 22 43 61 6e 27 74 20 53 74 6f 70 20 22 } //1 If Err <> 0 Then MsgBox "Can't Stop "
		$a_01_4 = {41 70 70 41 63 74 69 76 61 74 65 20 22 4d 69 63 72 6f 73 6f 66 74 20 50 6f 77 65 72 50 6f 69 6e 74 20 53 65 72 76 69 63 65 73 2e 2e 2e 22 } //1 AppActivate "Microsoft PowerPoint Services..."
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}