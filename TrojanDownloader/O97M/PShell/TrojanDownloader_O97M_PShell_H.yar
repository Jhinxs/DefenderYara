
rule TrojanDownloader_O97M_PShell_H{
	meta:
		description = "TrojanDownloader:O97M/PShell.H,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {43 61 6c 6c 20 [0-20] 28 22 68 74 74 70 [0-02] 3a 2f 2f [0-30] 2f [0-10] 2e 6a 70 67 22 2c 20 45 6e 76 69 72 6f 6e 28 22 41 70 70 44 61 74 61 22 29 20 26 20 22 5c [0-10] 2e 65 78 65 22 29 } //2
		$a_00_1 = {2e 53 61 76 65 54 6f 46 69 6c 65 28 53 44 45 2c 20 32 29 } //1 .SaveToFile(SDE, 2)
	condition:
		((#a_02_0  & 1)*2+(#a_00_1  & 1)*1) >=2
 
}