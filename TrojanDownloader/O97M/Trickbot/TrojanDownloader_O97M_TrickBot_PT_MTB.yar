
rule TrojanDownloader_O97M_TrickBot_PT_MTB{
	meta:
		description = "TrojanDownloader:O97M/TrickBot.PT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {55 73 65 72 46 6f 72 6d 31 2e 4c 61 62 65 6c 31 2e 43 61 70 74 69 6f 6e 20 3d 20 75 6f 65 72 68 6c 66 2e 6a 67 66 6c 6b 34 28 55 73 65 72 46 6f 72 6d 31 2e 4c 61 62 65 6c 31 2e 43 61 70 74 69 6f 6e 2c 20 22 68 73 74 22 29 } //1 UserForm1.Label1.Caption = uoerhlf.jgflk4(UserForm1.Label1.Caption, "hst")
		$a_01_1 = {55 73 65 72 46 6f 72 6d 31 2e 50 72 6f 67 72 65 73 73 42 61 72 31 2e 56 61 6c 75 65 20 3d 20 55 73 65 72 46 6f 72 6d 31 2e 50 72 6f 67 72 65 73 73 42 61 72 31 2e 56 61 6c 75 65 20 2b 20 31 } //1 UserForm1.ProgressBar1.Value = UserForm1.ProgressBar1.Value + 1
		$a_01_2 = {55 73 65 72 46 6f 72 6d 31 2e 54 65 78 74 42 6f 78 31 2e 54 61 67 20 3d 20 55 73 65 72 46 6f 72 6d 31 2e 54 65 78 74 42 6f 78 31 2e 54 65 78 74 20 26 20 6a 67 66 6c 6b 34 28 55 73 65 72 46 6f 72 6d 31 2e 54 65 78 74 42 6f 78 31 2e 54 65 78 74 2c 20 22 66 77 22 29 } //1 UserForm1.TextBox1.Tag = UserForm1.TextBox1.Text & jgflk4(UserForm1.TextBox1.Text, "fw")
		$a_01_3 = {41 63 74 69 76 65 57 6f 72 6b 62 6f 6f 6b 2e 53 68 65 65 74 73 28 31 29 2e 52 61 6e 67 65 28 22 41 31 22 29 2e 56 61 6c 75 65 20 3d 20 22 77 72 75 22 } //1 ActiveWorkbook.Sheets(1).Range("A1").Value = "wru"
		$a_01_4 = {6a 67 66 6c 6b 34 20 3d 20 52 65 70 6c 61 63 65 28 6a 6c 76 66 64 2c 20 62 78 63 6a 2c 20 22 22 29 } //1 jgflk4 = Replace(jlvfd, bxcj, "")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}