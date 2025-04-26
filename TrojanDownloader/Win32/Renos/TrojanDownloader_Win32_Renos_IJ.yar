
rule TrojanDownloader_Win32_Renos_IJ{
	meta:
		description = "TrojanDownloader:Win32/Renos.IJ,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 "
		
	strings :
		$a_03_0 = {6a 0c 50 68 00 14 2d 00 ff 75 ?? ff 15 ?? ?? 40 00 } //2
		$a_03_1 = {c1 e8 1a c1 e6 06 8a 80 ?? ?? 40 00 34 a0 } //2
		$a_01_2 = {8a 06 04 60 0f b6 c0 83 c0 03 } //2
		$a_01_3 = {77 07 3d 00 00 00 80 73 } //1
		$a_03_4 = {68 58 4d 56 c7 85 ?? ?? ff ff 58 56 00 00 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1) >=7
 
}