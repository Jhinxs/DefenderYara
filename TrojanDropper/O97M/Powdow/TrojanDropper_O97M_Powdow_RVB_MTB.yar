
rule TrojanDropper_O97M_Powdow_RVB_MTB{
	meta:
		description = "TrojanDropper:O97M/Powdow.RVB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 0d 0a [0-0a] 2e 65 78 65 63 } //1
		$a_03_1 = {22 63 3a 5c 77 69 6e 64 6f 77 73 5c 65 78 70 6c 6f 72 65 72 20 22 20 26 20 [0-0a] 0d 0a 45 6e 64 20 46 75 6e 63 74 69 6f 6e } //1
		$a_01_2 = {64 6f 63 75 6d 65 6e 74 5f 6f 70 65 6e 28 29 0d 0a 6d 61 69 6e 2e 6b 61 72 6f 6c 69 6e 65 20 28 22 22 29 } //1
		$a_01_3 = {2e 42 75 69 6c 74 49 6e 44 6f 63 75 6d 65 6e 74 50 72 6f 70 65 72 74 69 65 73 28 22 6b 65 79 77 6f 72 64 73 22 29 2e 56 61 6c 75 65 29 } //1 .BuiltInDocumentProperties("keywords").Value)
		$a_01_4 = {43 61 6c 6c 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 6f 6e 74 65 6e 74 2e 46 69 6e 64 2e 45 78 65 63 75 74 65 28 46 69 6e 64 54 65 78 74 3a 3d 22 23 61 22 2c 20 52 65 70 6c 61 63 65 57 69 74 68 3a 3d 22 22 2c 20 52 65 70 6c 61 63 65 3a 3d 32 29 } //1 Call ActiveDocument.Content.Find.Execute(FindText:="#a", ReplaceWith:="", Replace:=2)
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}