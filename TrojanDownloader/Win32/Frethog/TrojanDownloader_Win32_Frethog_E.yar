
rule TrojanDownloader_Win32_Frethog_E{
	meta:
		description = "TrojanDownloader:Win32/Frethog.E,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {43 00 61 00 6e 00 20 00 6e 00 6f 00 74 00 20 00 73 00 74 00 61 00 72 00 74 00 20 00 76 00 69 00 63 00 74 00 69 00 6d 00 20 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 21 00 } //1 Can not start victim process!
		$a_01_1 = {5c 00 a2 5b 37 62 ef 7a 5c 00 6e 00 6f 00 74 00 65 00 70 00 61 00 64 00 2e 00 76 00 62 00 70 } //1
		$a_03_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e [0-20] 2e 00 6e 00 65 00 74 00 2f 00 66 00 69 00 6c 00 65 00 2e 00 74 00 78 00 74 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}