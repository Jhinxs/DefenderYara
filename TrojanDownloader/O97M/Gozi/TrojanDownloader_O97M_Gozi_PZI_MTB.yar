
rule TrojanDownloader_O97M_Gozi_PZI_MTB{
	meta:
		description = "TrojanDownloader:O97M/Gozi.PZI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 70 72 65 6d 69 75 6d 63 6c 61 73 73 2e 63 79 6f 75 2f 30 70 7a 69 6f 6e 61 6c 31 61 2e 64 6c 6c } //1 http://premiumclass.cyou/0pzional1a.dll
		$a_01_1 = {43 3a 5c 6a 48 5a 6c 5a 58 52 5c 6a 67 44 6d 78 44 79 } //1 C:\jHZlZXR\jgDmxDy
		$a_01_2 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}