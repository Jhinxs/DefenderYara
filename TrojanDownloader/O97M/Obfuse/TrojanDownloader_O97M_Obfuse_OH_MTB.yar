
rule TrojanDownloader_O97M_Obfuse_OH_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.OH!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //1 CreateObject("WScript.Shell")
		$a_01_1 = {4e 6f 77 20 2b 20 54 69 6d 65 56 61 6c 75 65 28 22 30 3a 30 30 3a 30 35 22 29 } //1 Now + TimeValue("0:00:05")
		$a_03_2 = {53 68 65 6c 6c 20 28 45 6e 76 69 72 6f 6e 28 22 54 65 6d 70 22 29 20 2b 20 22 5c [0-08] 2e 62 61 74 22 29 } //1
		$a_01_3 = {43 68 72 28 28 32 35 35 20 2d 20 41 73 63 28 4d 69 64 28 76 50 77 64 2c 20 69 2c 20 31 29 } //1 Chr((255 - Asc(Mid(vPwd, i, 1)
		$a_01_4 = {2e 52 75 6e 20 28 6d 69 63 72 6f 73 6f 74 28 67 66 29 29 } //1 .Run (microsot(gf))
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}