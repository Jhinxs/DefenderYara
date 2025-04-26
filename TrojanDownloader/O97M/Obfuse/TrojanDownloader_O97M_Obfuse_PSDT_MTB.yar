
rule TrojanDownloader_O97M_Obfuse_PSDT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PSDT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {3d 20 4e 65 77 20 49 57 73 68 52 75 6e 74 69 6d 65 4c 69 62 72 61 72 79 2e 57 73 68 53 68 65 6c 6c } //1 = New IWshRuntimeLibrary.WshShell
		$a_01_1 = {2e 72 75 6e 20 6d 69 78 4d 70 33 49 6e 73 74 61 6c 6c 2c 20 32 } //1 .run mixMp3Install, 2
		$a_03_2 = {3d 20 22 2e 22 20 26 20 6d 69 78 4d 70 33 49 6e 73 74 61 6c 6c 20 26 20 73 65 74 75 70 53 65 74 4d 70 33 90 0c 02 00 4f 70 65 6e 20 6d 69 78 4d 70 33 49 6e 73 74 61 6c 6c 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 } //1
		$a_01_3 = {50 72 69 6e 74 20 23 31 2c 20 52 65 70 6c 61 63 65 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 6f 6e 74 65 6e 74 2c 20 22 71 71 6e 62 6d 22 2c 20 22 22 29 } //1 Print #1, Replace(ActiveDocument.Content, "qqnbm", "")
		$a_03_4 = {50 75 62 6c 69 63 20 53 75 62 20 61 75 74 6f 4f 70 65 6e 28 29 90 0c 02 00 6d 69 78 4d 69 78 4d 70 33 20 22 22 2c 20 22 48 54 41 22 90 0c 02 00 45 6e 64 20 53 75 62 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}