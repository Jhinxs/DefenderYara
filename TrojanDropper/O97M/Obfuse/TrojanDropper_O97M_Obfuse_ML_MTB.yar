
rule TrojanDropper_O97M_Obfuse_ML_MTB{
	meta:
		description = "TrojanDropper:O97M/Obfuse.ML!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_03_0 = {26 20 22 5c [0-14] 2e 78 6c 73 78 22 } //1
		$a_03_1 = {2e 54 61 67 20 2b 20 22 5c [0-45] 2e 64 6c 6c 22 } //1
		$a_01_2 = {26 20 22 5c 6f 6c 65 4f 62 6a 22 20 2b 20 22 65 63 74 2a 2e 62 69 6e 22 2c } //1 & "\oleObj" + "ect*.bin",
		$a_01_3 = {2e 69 74 65 6d 73 2e 49 74 65 6d 28 22 78 6c 5c 65 6d 62 65 64 64 69 6e 67 73 5c 6f 6c 65 4f 62 6a 65 63 74 31 2e 62 69 6e 22 29 } //1 .items.Item("xl\embeddings\oleObject1.bin")
		$a_01_4 = {3d 20 54 65 6d 70 4e 61 6d 65 20 2b 20 22 2e 7a 69 70 22 } //1 = TempName + ".zip"
		$a_01_5 = {54 65 6d 70 20 3d 20 22 27 22 20 26 20 54 68 69 73 57 6f 72 6b 62 6f 6f 6b 2e 50 61 74 68 20 26 } //1 Temp = "'" & ThisWorkbook.Path &
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}