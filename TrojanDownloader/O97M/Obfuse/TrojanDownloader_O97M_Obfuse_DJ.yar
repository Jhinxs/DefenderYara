
rule TrojanDownloader_O97M_Obfuse_DJ{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.DJ,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {50 75 62 6c 69 63 20 53 75 62 20 66 63 4c 34 71 4f 62 34 28 29 } //1 Public Sub fcL4qOb4()
		$a_00_1 = {2e 49 44 20 3d 20 22 50 22 20 26 20 49 73 73 71 77 65 36 } //1 .ID = "P" & Issqwe6
		$a_02_2 = {22 68 74 74 70 3a 2f 2f [0-14] 2e 63 6f 6d 2f [0-06] 2f ?? 2e 6a 70 67 22 2c 20 45 6e 76 69 72 6f 6e 28 22 41 70 70 44 61 74 61 22 29 20 26 20 22 5c [0-0a] 2e 65 78 65 22 29 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}