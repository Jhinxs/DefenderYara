
rule TrojanDownloader_O97M_Emotet_NEMA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.NEMA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 65 74 20 54 53 20 3d 20 66 73 6f 2e 4f 70 65 6e 54 65 78 74 46 69 6c 65 28 46 69 6c 65 4e 61 6d 65 24 2c 20 31 2c 20 54 72 75 65 29 3a 20 74 78 74 24 20 3d 20 54 53 2e 52 65 61 64 41 6c 6c 3a 20 54 53 2e 43 6c 6f 73 65 } //1 Set TS = fso.OpenTextFile(FileName$, 1, True): txt$ = TS.ReadAll: TS.Close
		$a_01_1 = {53 75 62 20 63 62 6b 6c 75 33 65 69 6f 72 61 75 77 62 74 6f 69 62 6e 6f 66 33 69 62 74 61 6f 69 77 62 74 6f 61 69 77 68 6e 67 70 6f 66 6b 6a 68 70 7a 6a 75 73 34 6f 69 67 68 73 7a 6f 69 7a 63 64 76 69 62 68 28 42 79 56 61 6c 20 68 73 6b 6c 64 20 41 73 20 53 74 72 69 6e 67 2c 20 42 79 56 61 6c 20 75 6f 77 69 65 6e 20 41 73 20 53 74 72 69 6e 67 29 } //1 Sub cbklu3eiorauwbtoibnof3ibtaoiwbtoaiwhngpofkjhpzjus4oighszoizcdvibh(ByVal hskld As String, ByVal uowien As String)
		$a_01_2 = {64 67 66 6a 61 6c 66 68 6b 61 75 67 77 69 6b 67 66 75 6f 6c 33 77 67 6e 61 63 6f 69 33 75 35 74 61 62 6f 69 33 75 74 35 72 6f 61 69 33 75 35 67 6f 33 77 75 67 61 6f 6c 69 73 64 72 67 66 73 6f 38 69 37 77 65 6a 77 64 6f 6c 6a 67 66 20 22 73 64 22 2c 20 30 2c 20 30 } //1 dgfjalfhkaugwikgfuol3wgnacoi3u5taboi3ut5roai3u5go3wugaolisdrgfso8i7wejwdoljgf "sd", 0, 0
		$a_01_3 = {4d 73 67 42 6f 78 20 66 6a 6c } //1 MsgBox fjl
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}