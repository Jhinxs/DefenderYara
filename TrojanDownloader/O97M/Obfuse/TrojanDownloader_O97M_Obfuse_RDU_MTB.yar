
rule TrojanDownloader_O97M_Obfuse_RDU_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RDU!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {27 4d 73 67 42 6f 78 27 4d 73 67 42 6f 78 27 4d 73 67 42 6f 78 27 4d 73 67 42 6f 78 27 4d 73 67 42 6f 78 27 4d 73 67 42 6f 78 27 4d 73 67 42 6f 78 } //1 'MsgBox'MsgBox'MsgBox'MsgBox'MsgBox'MsgBox'MsgBox
		$a_00_1 = {49 6e 50 61 72 61 6d 65 74 65 72 73 2e 53 70 61 77 6e 49 6e 73 74 61 6e 63 65 } //1 InParameters.SpawnInstance
		$a_00_2 = {2e 45 78 65 63 4d 65 74 68 6f 64 5f 28 54 43 28 29 } //1 .ExecMethod_(TC()
		$a_03_3 = {28 22 33 20 32 20 5f 22 29 20 26 20 [0-06] 28 22 20 50 20 72 20 6f 20 63 20 65 20 73 20 73 20 22 29 } //1
		$a_00_4 = {55 73 65 72 46 6f 72 6d 5f 43 6c 69 63 6b 28 29 } //1 UserForm_Click()
		$a_00_5 = {4a 6f 69 6e 28 53 70 6c 69 74 28 54 55 2c 20 22 20 22 29 2c 20 22 22 29 } //1 Join(Split(TU, " "), "")
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_03_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}