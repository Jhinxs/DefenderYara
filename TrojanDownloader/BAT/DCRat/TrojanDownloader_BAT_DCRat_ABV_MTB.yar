
rule TrojanDownloader_BAT_DCRat_ABV_MTB{
	meta:
		description = "TrojanDownloader:BAT/DCRat.ABV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 "
		
	strings :
		$a_03_0 = {26 16 28 24 ?? ?? 0a 72 21 ?? ?? 70 28 25 ?? ?? 0a 26 17 0c 16 90 0a 44 00 73 0e ?? ?? 06 0a 28 23 ?? ?? 0a 0b 1f 1a 28 24 ?? ?? 0a 72 0d ?? ?? 70 28 25 ?? 00 0a } //4
		$a_01_1 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 41 73 79 6e 63 } //1 DownloadFileAsync
		$a_01_2 = {47 65 74 46 6f 6c 64 65 72 50 61 74 68 } //1 GetFolderPath
		$a_01_3 = {54 61 73 6b 32 37 4c 6f 61 64 65 72 } //1 Task27Loader
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=7
 
}