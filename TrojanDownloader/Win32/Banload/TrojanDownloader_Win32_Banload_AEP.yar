
rule TrojanDownloader_Win32_Banload_AEP{
	meta:
		description = "TrojanDownloader:Win32/Banload.AEP,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {5c 66 62 68 6f 73 74 2e 65 78 65 00 } //1
		$a_01_1 = {68 74 74 70 3a 2f 2f 64 6c 2e 64 72 6f 70 62 6f 78 2e 63 6f 6d 2f 75 2f } //1 http://dl.dropbox.com/u/
		$a_03_2 = {8b c3 8b 18 ff 13 84 c0 74 16 b2 01 a1 [0-04] e8 [0-04] 8b 15 [0-04] 8b 08 ff 11 33 c0 5a 59 59 64 89 10 68 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}