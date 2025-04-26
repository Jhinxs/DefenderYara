
rule TrojanDropper_O97M_Hancitor_JOAD_MTB{
	meta:
		description = "TrojanDropper:O97M/Hancitor.JOAD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {44 6f 63 75 6d 65 6e 74 73 2e 4f 70 65 6e 20 46 69 6c 65 4e 61 6d 65 3a 3d 4f 70 74 69 6f 6e 73 2e 44 65 66 61 75 6c 74 46 69 6c 65 50 61 74 68 28 77 64 55 73 65 72 54 65 6d 70 6c 61 74 65 73 50 61 74 68 29 20 26 20 22 5c 7a 6f 72 6f 2e 64 6f 63 22 2c 20 43 6f 6e 66 69 72 6d 43 6f 6e 76 65 72 73 69 6f 6e 73 3a 3d 46 61 6c 73 65 2c 20 52 65 61 64 4f 6e 6c 79 3a 3d 20 5f } //1 Documents.Open FileName:=Options.DefaultFilePath(wdUserTemplatesPath) & "\zoro.doc", ConfirmConversions:=False, ReadOnly:= _
		$a_01_1 = {43 61 6c 6c 20 62 76 78 66 63 73 64 } //1 Call bvxfcsd
		$a_01_2 = {53 75 62 20 70 70 70 78 28 29 } //1 Sub pppx()
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}