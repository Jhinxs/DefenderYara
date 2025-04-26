
rule TrojanDownloader_Win32_Smawis_A{
	meta:
		description = "TrojanDownloader:Win32/Smawis.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {00 00 77 00 73 00 2e 00 70 00 68 00 70 00 3f 00 78 00 3d 00 00 00 } //1
		$a_01_1 = {8a 86 96 01 00 00 33 c9 8a 8e 95 01 00 00 33 d2 8a 96 94 01 00 00 50 51 52 } //1
		$a_03_2 = {6a 00 6a 00 ff d7 81 fe 09 04 00 00 74 ?? 81 fe ?? ?? 00 00 74 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}