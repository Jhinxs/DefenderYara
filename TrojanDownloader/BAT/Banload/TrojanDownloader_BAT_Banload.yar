
rule TrojanDownloader_BAT_Banload{
	meta:
		description = "TrojanDownloader:BAT/Banload,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 6c 6b 70 72 6f 63 5c 6c 6b 70 72 6f 63 5c 6f 62 6a 5c 78 38 36 5c 44 65 62 75 67 5c 6c 6b 70 72 6f 63 2e 70 64 62 00 } //1
		$a_01_1 = {5c 00 75 00 6e 00 7a 00 69 00 70 00 2e 00 65 00 78 00 65 00 } //1 \unzip.exe
		$a_01_2 = {2d 00 50 00 20 00 52 00 77 00 58 00 70 00 4c 00 50 00 61 00 7a 00 23 00 24 00 35 00 36 00 26 00 78 00 20 00 64 00 72 00 65 00 61 00 6d 00 78 00 2e 00 7a 00 69 00 70 00 } //1 -P RwXpLPaz#$56&x dreamx.zip
		$a_01_3 = {6c 00 6b 00 70 00 72 00 6f 00 63 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}