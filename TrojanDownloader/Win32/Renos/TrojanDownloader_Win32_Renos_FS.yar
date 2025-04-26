
rule TrojanDownloader_Win32_Renos_FS{
	meta:
		description = "TrojanDownloader:Win32/Renos.FS,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_03_0 = {eb 09 8b 45 ?? 83 c0 01 89 45 ?? 8b 4d ?? 3b 4d ?? 7d 18 8b 55 ?? 03 55 ?? 0f be 02 35 ?? ?? ?? ?? 8b 4d ?? 03 4d ?? 88 01 eb d7 } //1
		$a_03_1 = {eb 09 8a 55 9c 80 c2 01 88 55 9c 68 ?? ?? 01 10 e8 ?? ?? 00 00 83 c4 04 89 45 fc } //1
		$a_01_2 = {72 62 00 00 2f 64 6f 77 6e 6c 6f 61 64 2e 70 68 70 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=2
 
}