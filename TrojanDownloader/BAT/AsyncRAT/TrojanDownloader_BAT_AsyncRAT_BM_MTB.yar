
rule TrojanDownloader_BAT_AsyncRAT_BM_MTB{
	meta:
		description = "TrojanDownloader:BAT/AsyncRAT.BM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //2 powershell
		$a_01_1 = {28 00 4e 00 65 00 77 00 2d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 20 00 4e 00 65 00 74 00 2e 00 57 00 65 00 62 00 43 00 6c 00 69 00 65 00 6e 00 74 00 29 00 2e 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 } //2 (New-Object Net.WebClient).DownloadString(
		$a_01_2 = {2d 00 6e 00 6f 00 70 00 20 00 2d 00 65 00 78 00 65 00 63 00 20 00 62 00 79 00 70 00 61 00 73 00 73 00 20 00 2d 00 63 00 } //1 -nop -exec bypass -c
		$a_01_3 = {2d 00 57 00 69 00 6e 00 64 00 6f 00 77 00 53 00 74 00 79 00 6c 00 65 00 20 00 68 00 69 00 64 00 64 00 65 00 6e 00 } //1 -WindowStyle hidden
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}