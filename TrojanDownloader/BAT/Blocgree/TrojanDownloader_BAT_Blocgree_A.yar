
rule TrojanDownloader_BAT_Blocgree_A{
	meta:
		description = "TrojanDownloader:BAT/Blocgree.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 35 00 2e 00 32 00 30 00 36 00 2e 00 32 00 32 00 35 00 2e 00 31 00 37 00 2f 00 62 00 6c 00 6f 00 67 00 2f 00 73 00 63 00 72 00 65 00 65 00 6e 00 2e 00 70 00 68 00 70 00 } //1 http://5.206.225.17/blog/screen.php
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 35 00 2e 00 32 00 30 00 36 00 2e 00 32 00 32 00 35 00 2e 00 31 00 37 00 2f 00 62 00 6c 00 6f 00 67 00 2f 00 77 00 32 00 65 00 65 00 7a 00 63 00 66 00 75 00 65 00 38 00 35 00 79 00 2e 00 70 00 68 00 70 00 } //1 http://5.206.225.17/blog/w2eezcfue85y.php
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=1
 
}