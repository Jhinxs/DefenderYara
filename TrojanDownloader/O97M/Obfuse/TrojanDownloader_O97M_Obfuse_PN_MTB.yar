
rule TrojanDownloader_O97M_Obfuse_PN_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PN!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {3d 20 22 43 3a 5c 55 73 65 72 73 5c 22 20 26 20 45 6e 76 69 72 6f 6e 28 22 55 73 65 72 4e 61 6d 65 22 29 20 26 20 22 5c 41 70 70 44 61 74 61 5c 52 6f 61 6d 69 6e 67 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 53 74 61 72 74 20 4d 65 6e 75 5c 50 72 6f 67 72 61 6d 73 5c 53 74 61 72 74 75 70 5c } //1 = "C:\Users\" & Environ("UserName") & "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\
		$a_02_1 = {3d 20 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 2b 20 22 5c 22 20 2b 20 52 61 6e 64 4e 61 6d 65 28 [0-05] 29 } //1
		$a_00_2 = {2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 70 61 74 68 41 75 74 6f 20 2b 20 22 75 70 64 61 74 65 2e 62 61 74 22 29 } //1 .CreateTextFile(pathAuto + "update.bat")
		$a_00_3 = {3d 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 53 68 61 70 65 73 28 31 29 2e 54 65 78 74 46 72 61 6d 65 2e 54 65 78 74 52 61 6e 67 65 2e 54 65 78 74 } //1 = ActiveDocument.Shapes(1).TextFrame.TextRange.Text
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}