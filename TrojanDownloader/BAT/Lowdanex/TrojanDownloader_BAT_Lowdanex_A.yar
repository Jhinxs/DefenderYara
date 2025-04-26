
rule TrojanDownloader_BAT_Lowdanex_A{
	meta:
		description = "TrojanDownloader:BAT/Lowdanex.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 69 00 63 00 74 00 63 00 6f 00 65 00 2e 00 6f 00 72 00 67 00 2e 00 65 00 74 00 2f 00 70 00 6c 00 75 00 67 00 69 00 6e 00 73 00 2f 00 73 00 79 00 73 00 74 00 65 00 6d 00 2f 00 6c 00 65 00 67 00 61 00 63 00 79 00 2f 00 56 00 69 00 6e 00 65 00 2e 00 65 00 78 00 65 00 } //1 http://www.ictcoe.org.et/plugins/system/legacy/Vine.exe
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 69 00 63 00 74 00 63 00 6f 00 65 00 2e 00 6f 00 72 00 67 00 2e 00 65 00 74 00 2f 00 70 00 6c 00 75 00 67 00 69 00 6e 00 73 00 2f 00 73 00 79 00 73 00 74 00 65 00 6d 00 2f 00 6c 00 65 00 67 00 61 00 63 00 79 00 2f 00 63 00 6f 00 72 00 65 00 2e 00 70 00 68 00 70 00 } //1 http://www.ictcoe.org.et/plugins/system/legacy/core.php
		$a_01_2 = {44 6f 77 6e 6c 6f 61 64 41 6e 64 45 78 65 63 75 74 65 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 44 6f 77 6e 6c 6f 61 64 2e 70 64 62 } //1 DownloadAndExecute\obj\Release\Download.pdb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}