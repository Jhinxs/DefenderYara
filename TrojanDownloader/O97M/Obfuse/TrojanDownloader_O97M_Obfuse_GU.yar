
rule TrojanDownloader_O97M_Obfuse_GU{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.GU,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //1 Sub AutoOpen()
		$a_03_1 = {3d 20 47 65 74 4f 62 6a 65 63 74 28 [0-14] 2e 43 6f 6e 74 72 6f 6c 73 28 31 29 2e 54 65 78 74 29 } //1
		$a_03_2 = {2e 52 75 6e 21 20 22 22 20 2b 20 [0-14] 2c } //1
		$a_01_3 = {2e 43 6f 6e 74 72 6f 6c 73 28 32 29 2e 56 61 6c 75 65 29 20 2b } //1 .Controls(2).Value) +
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}