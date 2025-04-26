
rule TrojanDownloader_Win32_Renos_GF{
	meta:
		description = "TrojanDownloader:Win32/Renos.GF,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0b 00 04 00 00 "
		
	strings :
		$a_03_0 = {03 45 fc 0f be 08 81 f1 ?? ?? ?? ?? 88 4d f8 8b 55 0c 03 55 fc 8a 45 f8 88 02 0f be 4d f8 85 c9 75 02 } //10
		$a_03_1 = {3d 35 05 00 00 73 29 c7 45 f4 00 00 00 00 e8 ?? ?? ?? ?? 89 45 f4 81 7d f4 00 00 00 d0 77 0f 81 7d f4 00 00 00 80 72 06 } //1
		$a_03_2 = {86 f3 c7 45 fc 02 00 00 00 8b 85 ?? ?? ?? ?? cd 41 } //1
		$a_01_3 = {33 c0 50 0f 01 4c 24 fe 58 c3 } //1
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=11
 
}