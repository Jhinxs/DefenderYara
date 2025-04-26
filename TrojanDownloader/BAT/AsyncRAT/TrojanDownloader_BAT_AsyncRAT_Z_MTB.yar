
rule TrojanDownloader_BAT_AsyncRAT_Z_MTB{
	meta:
		description = "TrojanDownloader:BAT/AsyncRAT.Z!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 "
		
	strings :
		$a_03_0 = {08 07 09 07 8e 69 5d 91 02 09 91 61 d2 6f ?? 00 00 0a 09 17 58 0d 09 02 8e 69 32 } //2
		$a_01_1 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_01_2 = {47 65 74 42 79 74 65 73 } //1 GetBytes
		$a_01_3 = {47 65 74 54 79 70 65 } //1 GetType
		$a_01_4 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
		$a_01_5 = {67 65 74 5f 41 53 43 49 49 } //1 get_ASCII
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=7
 
}