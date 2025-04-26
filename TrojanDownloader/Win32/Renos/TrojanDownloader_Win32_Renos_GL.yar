
rule TrojanDownloader_Win32_Renos_GL{
	meta:
		description = "TrojanDownloader:Win32/Renos.GL,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {3b 45 f4 7d 19 8b 4d 08 03 4d f8 0f be 11 81 f2 ?? ?? 00 00 8b 45 fc 03 45 f8 88 10 eb d6 } //2
		$a_01_1 = {64 6f 77 6e 6c 6f 61 64 2e 70 68 70 } //1 download.php
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1) >=2
 
}