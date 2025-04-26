
rule TrojanDownloader_BAT_AveMariaRAT_P_MTB{
	meta:
		description = "TrojanDownloader:BAT/AveMariaRAT.P!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_01_0 = {8e 69 5d 91 02 11 04 91 61 d2 6f } //2
		$a_01_1 = {47 65 74 42 79 74 65 73 } //1 GetBytes
		$a_01_2 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_01_3 = {47 65 74 54 79 70 65 } //1 GetType
		$a_01_4 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=6
 
}