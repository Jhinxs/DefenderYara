
rule TrojanDownloader_O97M_Obfuse_FX{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.FX,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-12] 28 [0-14] 29 20 26 20 [0-12] 28 [0-16] 29 29 2e 52 75 6e 20 [0-15] 2c 20 30 } //1
		$a_03_1 = {43 68 72 24 28 56 61 6c 28 22 26 48 22 20 26 20 4d 69 64 24 28 [0-12] 2c 20 [0-12] 2c 20 32 29 29 29 } //1
		$a_01_2 = {43 61 6c 6c 20 55 6e 68 69 64 65 53 68 65 65 74 73 } //1 Call UnhideSheets
		$a_01_3 = {53 68 65 65 74 73 28 22 50 72 6f 6d 70 74 22 29 2e 56 69 73 69 62 6c 65 20 3d 20 78 6c 53 68 65 65 74 56 65 72 79 48 69 64 64 65 6e } //1 Sheets("Prompt").Visible = xlSheetVeryHidden
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}