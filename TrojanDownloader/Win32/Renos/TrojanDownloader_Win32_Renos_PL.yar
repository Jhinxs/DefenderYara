
rule TrojanDownloader_Win32_Renos_PL{
	meta:
		description = "TrojanDownloader:Win32/Renos.PL,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {19 5e 42 2a 90 09 04 00 4c 01 90 17 02 01 01 06 07 00 } //1
		$a_03_1 = {74 07 ff 54 24 1c c2 08 00 8b 45 08 50 8b 45 f4 50 8b 45 f8 50 8b 45 fc 50 [0-02] e8 ?? ?? ?? ?? 89 45 f0 8b 45 f0 8b e5 5d c2 04 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}