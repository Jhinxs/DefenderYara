
rule Trojan_BAT_Downloader_RPS_MTB{
	meta:
		description = "Trojan:BAT/Downloader.RPS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {37 00 74 00 68 00 70 00 61 00 79 00 63 00 6f 00 6d 00 6d 00 69 00 73 00 69 00 6f 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 75 00 70 00 2f 00 46 00 69 00 6c 00 65 00 2e 00 70 00 6e 00 67 00 } //1 7thpaycommision.com/up/File.png
		$a_01_1 = {45 00 6e 00 61 00 62 00 6c 00 65 00 47 00 6c 00 6f 00 62 00 61 00 6c 00 } //1 EnableGlobal
		$a_01_2 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //1 powershell
		$a_01_3 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //1 FromBase64String
		$a_01_4 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_01_5 = {57 65 62 43 6c 69 65 6e 74 } //1 WebClient
		$a_01_6 = {52 65 70 6c 61 63 65 } //1 Replace
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}