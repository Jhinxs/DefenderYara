
rule TrojanDownloader_O97M_Obfuse_HY_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.HY!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_03_0 = {4f 70 65 6e 20 22 43 3a 5c 57 69 6e 64 6f 77 73 5c 54 65 6d 70 5c [0-30] 2e 6a 73 22 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 } //1
		$a_01_1 = {2e 43 6f 6e 74 72 6f 6c 73 28 30 29 2e 43 6f 6e 74 72 6f 6c 54 69 70 54 65 78 74 } //1 .Controls(0).ControlTipText
		$a_01_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 68 65 6c 6c 2e 41 70 70 6c 69 63 61 74 69 6f 6e 22 29 } //1 = CreateObject("Shell.Application")
		$a_03_3 = {2e 4e 61 6d 65 53 70 61 63 65 28 22 43 3a 5c 57 69 6e 64 6f 77 73 [0-07] 54 65 6d 70 22 29 } //1
		$a_01_4 = {2e 49 6e 76 6f 6b 65 56 65 72 62 20 28 22 4f 70 } //1 .InvokeVerb ("Op
		$a_01_5 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //1 Sub AutoOpen()
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}