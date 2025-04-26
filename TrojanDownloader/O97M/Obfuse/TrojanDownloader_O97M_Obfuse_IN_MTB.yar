
rule TrojanDownloader_O97M_Obfuse_IN_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.IN!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {43 61 6c 6c 20 [0-10] 28 [0-10] 2e [0-10] 2c 20 22 76 65 72 69 6e 73 74 65 72 65 2e 78 6c 73 22 2c 20 30 29 } //1
		$a_01_1 = {49 66 20 49 6e 53 74 72 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 50 61 72 61 67 72 61 70 68 73 28 6a 29 2e 52 61 6e 67 65 2e 54 65 78 74 2c 20 22 76 69 65 77 20 74 68 69 73 22 29 20 54 68 65 6e } //1 If InStr(ActiveDocument.Paragraphs(j).Range.Text, "view this") Then
		$a_01_2 = {49 66 20 49 6e 53 74 72 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 50 61 72 61 67 72 61 70 68 73 28 6a 29 2e 52 61 6e 67 65 2e 54 65 78 74 2c 20 22 45 72 72 6f 72 22 29 20 54 68 65 6e } //1 If InStr(ActiveDocument.Paragraphs(j).Range.Text, "Error") Then
		$a_03_3 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-10] 2e 54 61 67 29 } //1
		$a_01_4 = {28 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 29 } //1 (Environ("TEMP"))
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}