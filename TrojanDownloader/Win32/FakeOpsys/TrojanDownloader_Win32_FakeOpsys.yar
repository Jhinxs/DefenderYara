
rule TrojanDownloader_Win32_FakeOpsys{
	meta:
		description = "TrojanDownloader:Win32/FakeOpsys,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {44 6f 77 6e 6c 6f 61 64 69 6e 67 2e 2e 2e } //1 Downloading...
		$a_03_1 = {2d 5e 01 00 00 90 09 07 00 6a 00 e8 } //1
		$a_03_2 = {2d 82 00 00 00 90 09 07 00 6a 01 e8 } //1
		$a_01_3 = {68 5e 01 00 00 68 82 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}