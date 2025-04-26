
rule Trojan_BAT_Downloader_BF_MTB{
	meta:
		description = "Trojan:BAT/Downloader.BF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 07 00 00 "
		
	strings :
		$a_81_0 = {68 74 74 70 3a 2f 2f 39 31 2e 32 34 33 2e 34 34 2e 32 32 2f 50 4c 2d 39 33 38 37 31 30 39 38 2e 70 6e 67 } //5 http://91.243.44.22/PL-93871098.png
		$a_81_1 = {68 74 74 70 3a 2f 2f 38 34 2e 32 35 32 2e 31 32 32 2e 32 30 35 2f 78 78 2f 43 6f 6e 73 6f 6c 65 41 70 70 31 32 2e 62 69 6e } //5 http://84.252.122.205/xx/ConsoleApp12.bin
		$a_01_2 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_01_3 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_01_4 = {49 6e 76 6f 6b 65 } //1 Invoke
		$a_01_5 = {67 65 74 5f 41 73 73 65 6d 62 6c 79 } //1 get_Assembly
		$a_01_6 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
	condition:
		((#a_81_0  & 1)*5+(#a_81_1  & 1)*5+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=10
 
}