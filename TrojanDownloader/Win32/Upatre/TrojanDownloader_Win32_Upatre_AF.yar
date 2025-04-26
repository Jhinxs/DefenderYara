
rule TrojanDownloader_Win32_Upatre_AF{
	meta:
		description = "TrojanDownloader:Win32/Upatre.AF,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0f 00 00 "
		
	strings :
		$a_01_0 = {fc ad ab 33 c0 66 ad ab e2 f7 } //2
		$a_03_1 = {5b 83 c3 09 e9 ?? ?? ?? ?? 4c 6f 61 64 4c } //2
		$a_01_2 = {03 f2 51 8b 06 8b cf 33 c1 89 06 47 59 49 75 f0 } //2
		$a_01_3 = {68 02 01 00 00 ff 55 68 8b 07 66 3d 4d 5a 74 31 } //2
		$a_01_4 = {8b c2 03 f0 8b 06 33 c7 47 89 06 e2 f3 } //2
		$a_01_5 = {8b 00 fe c8 fe c4 66 3d 4c 5b 0f 84 } //1
		$a_01_6 = {03 f2 51 57 8b 06 59 33 c1 89 06 03 f2 59 47 e2 f1 } //2
		$a_03_7 = {57 ab 33 c0 ab e2 fd 8b 7d ?? 57 ab ab ab ab 8b f8 } //1
		$a_01_8 = {fc ad ab 33 c0 66 ad 66 ab 33 c0 ac 66 ab e2 f1 } //1
		$a_01_9 = {b0 25 66 ab b0 75 66 ab b0 00 66 ab } //1
		$a_01_10 = {51 33 c9 fc ad ab 8b c1 fc 66 ad 66 ab 8b c1 fc ac 66 ab 59 e2 ea } //2
		$a_03_11 = {57 ab ab ab ab b8 ?? ?? ?? ?? 57 ab 33 c0 ab e2 fd } //2
		$a_03_12 = {b8 52 74 6c 44 89 06 56 ff 75 ?? ff 55 ?? 50 b8 21 21 21 21 89 06 } //2
		$a_01_13 = {b0 31 66 ab b0 2f 66 ab 8b c1 04 30 b4 00 66 ab b0 2f 66 ab } //2
		$a_01_14 = {3d 64 64 72 65 e0 f6 67 e3 c1 46 46 46 ad 2d 73 73 3a 20 } //2
	condition:
		((#a_01_0  & 1)*2+(#a_03_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*1+(#a_01_6  & 1)*2+(#a_03_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*2+(#a_03_11  & 1)*2+(#a_03_12  & 1)*2+(#a_01_13  & 1)*2+(#a_01_14  & 1)*2) >=6
 
}