
rule TrojanDownloader_BAT_Tiny_A_MTB{
	meta:
		description = "TrojanDownloader:BAT/Tiny.A!MTB,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {52 65 6c 65 61 73 65 5c 53 71 75 65 4c 69 63 65 6e 65 6e 63 65 2e 70 64 62 } //1 Release\SqueLicenence.pdb
		$a_01_1 = {73 65 63 72 65 74 4b 65 79 } //1 secretKey
		$a_01_2 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //1 DownloadFile
		$a_01_3 = {53 70 6c 69 74 } //1 Split
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}