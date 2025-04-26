
rule TrojanDownloader_O97M_Obfuse_KV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.KV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {3d 20 22 2e 6a 73 65 22 } //1 = ".jse"
		$a_03_1 = {3d 20 54 72 69 6d 28 49 6e 74 28 53 74 72 28 56 61 6c 28 [0-16] 29 20 2f 20 31 30 30 30 30 30 30 29 29 29 } //1
		$a_03_2 = {54 65 78 74 3a 3d 22 3d 20 22 20 2b 20 [0-13] 20 2b 20 22 20 5c 2a 20 43 61 72 64 54 65 78 74 22 2c 20 5f } //1
		$a_01_3 = {3d 20 55 73 65 72 46 6f 72 6d 31 2e 54 65 78 74 42 6f 78 33 2e 54 65 78 74 } //1 = UserForm1.TextBox3.Text
		$a_01_4 = {4d 73 67 42 6f 78 20 22 4e 75 6d 62 65 72 20 74 6f 6f 20 6c 61 72 67 65 22 2c 20 76 62 4f 4b 4f 6e 6c 79 } //1 MsgBox "Number too large", vbOKOnly
		$a_01_5 = {2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 66 69 6c 65 32 73 61 76 72 73 61 76 65 2c 20 54 72 75 65 2c 20 54 72 75 65 29 } //1 .CreateTextFile(file2savrsave, True, True)
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}