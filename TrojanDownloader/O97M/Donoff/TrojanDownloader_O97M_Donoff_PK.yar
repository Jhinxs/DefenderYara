
rule TrojanDownloader_O97M_Donoff_PK{
	meta:
		description = "TrojanDownloader:O97M/Donoff.PK,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {3d 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 41 74 74 61 63 68 65 64 54 65 6d 70 6c 61 74 65 2e 50 61 74 68 20 26 20 22 5c 22 20 26 20 22 64 6f 63 2e 61 72 65 3a 79 6f 75 } //1 = ActiveDocument.AttachedTemplate.Path & "\" & "doc.are:you
		$a_02_1 = {20 20 50 75 74 20 23 [0-10] 2c 20 2c 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 6f 6e 74 65 6e 74 2e 54 65 78 74 } //1
		$a_02_2 = {43 61 6c 6c 42 79 4e 61 6d 65 28 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-10] 20 26 20 22 2e 22 20 26 20 [0-10] 29 2c 20 [0-30] 2c 20 56 62 4d 65 74 68 6f 64 2c } //1
		$a_00_3 = {50 72 69 76 61 74 65 20 53 75 62 20 44 6f 63 75 6d 65 6e 74 5f 4f 70 65 6e 28 29 } //1 Private Sub Document_Open()
		$a_00_4 = {50 72 69 76 61 74 65 20 53 75 62 20 44 6f 63 75 6d 65 6e 74 5f 43 6c 6f 73 65 28 29 } //1 Private Sub Document_Close()
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}