
rule TrojanDownloader_BAT_AveMariaRAT_J_MTB{
	meta:
		description = "TrojanDownloader:BAT/AveMariaRAT.J!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 "
		
	strings :
		$a_01_0 = {47 00 65 00 74 00 45 00 78 00 70 00 6f 00 72 00 74 00 65 00 64 00 54 00 79 00 70 00 65 00 73 00 } //2 GetExportedTypes
		$a_01_1 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 } //2 Invoke
		$a_01_2 = {4c 00 6f 00 61 00 64 00 } //2 Load
		$a_01_3 = {3a 00 2f 00 2f 00 64 00 62 00 78 00 76 00 69 00 65 00 77 00 65 00 72 00 32 00 30 00 32 00 30 00 2e 00 30 00 30 00 30 00 77 00 65 00 62 00 68 00 6f 00 73 00 74 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 70 00 75 00 72 00 65 00 2f 00 75 00 70 00 6c 00 6f 00 61 00 64 00 73 00 2f 00 } //2 ://dbxviewer2020.000webhostapp.com/pure/uploads/
		$a_01_4 = {4c 00 6a 00 71 00 77 00 69 00 73 00 64 00 69 00 70 00 69 00 66 00 65 00 69 00 62 00 79 00 74 00 79 00 68 00 71 00 76 00 } //2 Ljqwisdipifeibytyhqv
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2) >=10
 
}