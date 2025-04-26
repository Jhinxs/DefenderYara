
rule TrojanDownloader_O97M_Obfuse_KE_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.KE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {22 75 73 65 72 22 } //1 "user"
		$a_01_1 = {3d 20 22 70 72 6f 66 69 6c 65 22 } //1 = "profile"
		$a_01_2 = {3d 20 4e 65 77 20 57 73 68 53 68 65 6c 6c } //1 = New WshShell
		$a_03_3 = {26 20 43 68 72 24 28 22 26 48 22 20 26 20 4d 69 64 24 28 [0-10] 2c } //1
		$a_03_4 = {4f 70 65 6e 20 [0-10] 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 } //1
		$a_01_5 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 42 6f 6f 6b 6d 61 72 6b 73 } //1 ActiveDocument.Bookmarks
		$a_01_6 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 41 63 63 65 70 74 41 6c 6c 52 65 76 69 73 69 6f 6e 73 53 68 6f 77 6e } //1 ActiveDocument.AcceptAllRevisionsShown
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}