
rule TrojanDownloader_Win32_Climetop_A{
	meta:
		description = "TrojanDownloader:Win32/Climetop.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {89 c1 80 33 ?? 43 e2 fa c3 } //4
		$a_03_1 = {ff d0 83 3d ?? ?? ?? ?? 64 74 11 } //1
		$a_01_2 = {77 73 68 65 6c 6c 33 32 2e 64 6c 6c } //1 wshell32.dll
		$a_01_3 = {74 88 6a 00 6a 01 } //1
		$a_01_4 = {63 6f 6d 70 6c 69 74 65 2e 64 61 74 } //1 complite.dat
	condition:
		((#a_03_0  & 1)*4+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}