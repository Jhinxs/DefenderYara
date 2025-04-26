
rule TrojanDownloader_Win32_Banload_BAX{
	meta:
		description = "TrojanDownloader:Win32/Banload.BAX,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {2a 00 5c 00 41 00 44 00 3a 00 5c 00 54 00 75 00 64 00 6f 00 5c 00 6e 00 6f 00 76 00 6f 00 20 00 70 00 65 00 71 00 75 00 65 00 6e 00 6f 00 20 00 2d 00 20 00 65 00 78 00 65 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //1 *\AD:\Tudo\novo pequeno - exe\Project1.vbp
		$a_03_1 = {66 3b f0 7f 0b 66 81 c6 ff 00 0f 80 90 04 01 02 d9 e0 00 00 00 } //1
		$a_03_2 = {41 00 2a 00 5c 00 41 00 44 00 3a 00 5c 00 54 00 75 00 64 00 6f 00 5c 00 31 00 20 00 2d 00 20 00 65 00 78 00 65 00 [0-10] 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=2
 
}