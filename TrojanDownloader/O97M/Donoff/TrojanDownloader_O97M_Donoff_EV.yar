
rule TrojanDownloader_O97M_Donoff_EV{
	meta:
		description = "TrojanDownloader:O97M/Donoff.EV,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_02_0 = {53 70 6c 69 74 28 22 [0-40] 2e 63 6f 2e 75 6b [0-90] 2e 43 6f 6d 6d 61 6e 64 2e 43 61 70 74 69 6f 6e 29 } //1
		$a_00_1 = {3d 20 47 65 74 4f 62 6a 65 63 74 28 22 77 69 6e 6d 67 6d 74 73 3a 5c 5c } //1 = GetObject("winmgmts:\\
		$a_00_2 = {2e 45 78 65 63 51 75 65 72 79 28 22 53 45 4c 45 43 54 20 2a 20 46 52 4f 4d 20 57 69 6e 33 32 5f 56 69 64 65 6f 43 6f 6e 74 72 6f 6c 6c 65 72 22 2c } //1 .ExecQuery("SELECT * FROM Win32_VideoController",
		$a_00_3 = {49 66 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 4b 69 6e 64 20 3d 20 30 20 54 68 65 6e } //1 If ActiveDocument.Kind = 0 Then
		$a_00_4 = {2e 45 6e 76 69 72 6f 6e 6d 65 6e 74 } //1 .Environment
		$a_00_5 = {57 53 63 72 69 70 74 2e 41 72 67 75 6d 65 6e 74 73 } //1 WScript.Arguments
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}