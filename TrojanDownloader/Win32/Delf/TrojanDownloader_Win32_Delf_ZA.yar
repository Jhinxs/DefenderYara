
rule TrojanDownloader_Win32_Delf_ZA{
	meta:
		description = "TrojanDownloader:Win32/Delf.ZA,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {45 00 72 00 61 00 7a 00 65 00 72 00 5a 00 00 00 6f 00 70 00 65 00 6e 00 } //1
		$a_00_1 = {0d 4c e3 5c c9 0d 1f 4c 89 7c da a1 b7 8c ee 7c } //1
		$a_03_2 = {6a 00 6a 00 6a 00 53 e8 ?? ?? ff ff 83 e8 04 69 15 ?? ?? 40 00 0b 02 00 00 2b c2 50 53 e8 ?? ?? ff ff a1 ?? ?? 40 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}