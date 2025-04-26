
rule TrojanDownloader_O97M_Donoff_PRC_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.PRC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {70 61 73 74 65 62 69 6e 2e 63 6f 6d 2f 72 61 77 2f 31 38 32 45 51 4d 70 69 } //1 pastebin.com/raw/182EQMpi
		$a_01_1 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //1 CreateObject("WScript.Shell")
		$a_03_2 = {52 75 6e 20 22 [0-0a] 2e 76 62 73 22 } //1
		$a_03_3 = {46 69 6c 65 43 6f 70 79 20 22 [0-0a] 2e 76 62 73 22 2c 20 45 6e 76 69 72 6f 6e 24 28 22 61 70 70 64 61 74 61 22 29 20 26 20 22 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 53 74 61 72 74 20 4d 65 6e 75 5c 50 72 6f 67 72 61 6d 73 5c 53 74 61 72 74 75 70 5c 22 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}