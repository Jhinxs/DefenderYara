
rule TrojanDownloader_Win32_Renos_Y{
	meta:
		description = "TrojanDownloader:Win32/Renos.Y,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 08 00 00 "
		
	strings :
		$a_01_0 = {b8 4f 00 00 00 cd 41 66 3d 86 f3 0f 94 c0 0f b6 c0 } //10
		$a_00_1 = {53 6e 6d 70 55 74 69 6c 4f 69 64 43 70 79 00 } //10
		$a_00_2 = {bf 00 01 00 00 88 84 05 fc fe ff ff 40 3b c7 72 f4 } //5
		$a_00_3 = {0f b6 c0 8a 84 05 fc fe ff ff 32 04 19 88 03 } //5
		$a_00_4 = {5c 5c 2e 5c 50 68 79 73 69 63 61 6c 44 72 69 76 65 25 64 00 43 72 66 31 55 7a 48 37 70 79 00 } //1
		$a_03_5 = {68 a0 bb 0d 00 ff d6 e8 ?? ?? ff ff 85 c0 75 f0 e8 ?? ?? ff ff eb e9 } //1
		$a_03_6 = {81 cb ff ff 99 a8 80 f1 98 89 1d ?? ?? ?? ?? 8b 1d ?? ?? ?? ?? 81 cb ff ff 2d e2 } //1
		$a_03_7 = {6a 0c 50 68 00 14 2d 00 90 09 04 00 [0-01] 8d (45|44 24) } //1
	condition:
		((#a_01_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*5+(#a_00_3  & 1)*5+(#a_00_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1) >=21
 
}