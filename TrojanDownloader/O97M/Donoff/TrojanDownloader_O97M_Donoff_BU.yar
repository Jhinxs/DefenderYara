
rule TrojanDownloader_O97M_Donoff_BU{
	meta:
		description = "TrojanDownloader:O97M/Donoff.BU,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {3d 20 41 73 63 28 22 30 22 29 20 54 6f 20 41 73 63 28 22 39 22 29 3a } //1 = Asc("0") To Asc("9"):
		$a_03_1 = {4c 6f 6f 70 [0-05] 90 11 10 00 90 12 1f 00 20 3d 20 22 5c 66 69 69 75 64 66 38 33 2e 22 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule TrojanDownloader_O97M_Donoff_BU_2{
	meta:
		description = "TrojanDownloader:O97M/Donoff.BU,SIGNATURE_TYPE_MACROHSTR_EXT,0b 00 0b 00 09 00 00 "
		
	strings :
		$a_01_0 = {3d 20 41 73 63 28 22 30 22 29 20 54 6f 20 41 73 63 28 22 39 22 29 3a } //2 = Asc("0") To Asc("9"):
		$a_01_1 = {3d 20 55 73 65 72 46 6f 72 6d 31 2e 43 6f 6d 62 6f 42 6f 78 31 2e 54 65 78 74 } //1 = UserForm1.ComboBox1.Text
		$a_01_2 = {41 6e 64 20 33 29 20 2a 20 26 48 34 30 29 20 4f 72 } //3 And 3) * &H40) Or
		$a_01_3 = {46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 } //1 For Output As #
		$a_01_4 = {2c 20 76 62 48 69 64 65 } //1 , vbHide
		$a_01_5 = {3d 20 55 73 65 72 46 6f 72 6d 31 2e 43 6f 6d 62 6f 42 6f 78 33 2e 54 65 78 74 } //1 = UserForm1.ComboBox3.Text
		$a_01_6 = {3d 20 30 20 54 6f 20 31 32 37 3a } //1 = 0 To 127:
		$a_01_7 = {53 75 62 20 44 6f 63 75 6d 65 6e 74 5f 4f 70 65 6e 28 29 } //1 Sub Document_Open()
		$a_01_8 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //1 Sub AutoOpen()
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*3+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=11
 
}