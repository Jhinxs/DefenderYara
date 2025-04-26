
rule TrojanDownloader_O97M_Obfuse_GS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.GS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {44 6f 77 6e 6c 6f 61 64 41 6e 64 45 78 65 63 } //1 DownloadAndExec
		$a_03_1 = {77 69 6e 64 6f 77 73 5c 74 65 6d 70 5c 65 6e 63 6f 64 65 64 2e 63 72 74 22 90 0a 2a 00 2e 73 61 76 65 74 6f 66 69 6c 65 20 22 43 3a 5c } //1
		$a_03_2 = {73 69 74 69 61 69 73 61 69 63 6f 6c 2d 65 6e 76 2e 65 62 61 2d 63 77 75 32 77 6a 32 7a 2e 75 73 2d 65 61 73 74 2d 31 2e 65 6c 61 73 74 69 63 62 65 61 6e 73 74 61 6c 6b 2e 63 6f 6d 2f 61 64 6d 69 6e 2f 67 65 74 2e 70 68 70 90 0a 51 00 68 74 74 70 3a 2f 2f } //1
		$a_00_3 = {53 68 65 6c 6c 20 28 22 63 6d 64 20 2f 63 20 63 65 72 74 75 74 69 6c 20 2d 64 65 63 6f 64 65 } //1 Shell ("cmd /c certutil -decode
		$a_03_4 = {77 69 6e 64 6f 77 73 5c 74 65 6d 70 5c 65 6e 63 6f 64 65 64 2e 65 78 65 90 0a 21 00 73 74 61 72 74 20 43 3a 5c } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_00_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}