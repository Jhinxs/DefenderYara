
rule TrojanDownloader_Win32_Bancos_FS{
	meta:
		description = "TrojanDownloader:Win32/Bancos.FS,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {75 00 6f 00 6c 00 2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 2f 00 [0-10] 2e 00 6a 00 70 00 67 00 } //1
		$a_03_1 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 61 74 6c 73 79 73 ?? 2e 65 78 65 } //1
		$a_01_2 = {8b cf 8b 5d f0 d3 eb 8b cf b8 01 00 00 00 d3 e0 8b c8 8b 45 f0 99 f7 f9 89 55 f0 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}