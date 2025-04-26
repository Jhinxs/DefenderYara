
rule TrojanDownloader_Linux_Nocosteq_A{
	meta:
		description = "TrojanDownloader:Linux/Nocosteq.A,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {43 61 6c 6c 20 44 6f 77 6e 6c 6f 61 64 46 69 6c 65 28 22 68 74 74 70 3a 2f 2f [0-35] 2e 65 78 65 22 2c 20 22 [0-10] 2e 65 78 65 22 29 } //1
		$a_03_1 = {43 61 6c 6c 20 44 6f 77 6e 6c 6f 61 64 46 69 6c 65 28 53 74 72 52 65 76 65 72 73 65 28 22 65 78 65 2e [0-35] 2f 2f 3a 70 74 74 68 22 29 2c 20 22 [0-10] 2e 65 78 65 22 29 } //1
		$a_01_2 = {52 75 6e 41 66 74 65 72 44 6f 77 6e 6c 6f 61 64 20 41 73 20 42 6f 6f 6c 65 61 6e 20 3d 20 54 72 75 65 2c 20 4f 70 74 69 6f 6e 61 6c 20 52 75 6e 48 69 64 65 20 41 73 20 42 6f 6f 6c 65 61 6e 20 3d 20 46 61 6c 73 65 29 } //2 RunAfterDownload As Boolean = True, Optional RunHide As Boolean = False)
		$a_01_3 = {4d 73 67 42 6f 78 20 22 45 73 74 65 20 64 6f 63 75 6d 65 6e 74 6f 20 6e 6f 20 65 73 20 63 6f 6d 70 61 74 69 62 6c 65 20 63 6f 6e 20 65 73 74 65 20 65 71 75 69 70 6f 2e 22 20 26 20 76 62 43 72 4c 66 20 26 20 76 62 43 72 4c 66 20 26 20 22 50 6f 72 20 66 61 76 6f 72 20 69 6e 74 65 6e 74 65 20 64 65 73 64 65 20 6f 74 72 6f 20 65 71 75 69 70 6f 2e 22 2c 20 76 62 43 72 69 74 69 63 61 6c 2c 20 22 45 72 72 6f 72 22 } //2 MsgBox "Este documento no es compatible con este equipo." & vbCrLf & vbCrLf & "Por favor intente desde otro equipo.", vbCritical, "Error"
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2) >=5
 
}