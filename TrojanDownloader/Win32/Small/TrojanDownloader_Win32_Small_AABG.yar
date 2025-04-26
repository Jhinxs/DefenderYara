
rule TrojanDownloader_Win32_Small_AABG{
	meta:
		description = "TrojanDownloader:Win32/Small.AABG,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_00_0 = {2f 67 65 74 2e 70 68 70 3f } //1 /get.php?
		$a_02_1 = {74 65 78 74 2f 2a [0-05] 69 6d 61 67 65 2f 2a [0-05] 61 70 70 6c 69 63 61 74 69 6f 6e 2f 2a [0-05] 2a 2f 2a } //1
		$a_03_2 = {c7 45 e0 04 00 00 00 6a 00 8d 45 e0 50 8d 45 d8 50 68 13 00 00 20 ff 75 f4 e8 ?? ?? 00 00 85 c0 75 07 c7 45 d8 ea 01 00 00 81 7d d8 c8 00 00 00 0f 85 ?? ?? 00 00 c7 45 e0 04 00 00 00 6a 00 8d 45 e0 50 8d 45 e8 50 68 05 00 00 20 ff 75 f4 } //2
		$a_03_3 = {33 d2 c1 e8 07 b9 06 00 00 00 f7 f1 c1 e2 0a 52 e8 ?? ?? 00 00 33 c0 } //2
		$a_03_4 = {85 c0 0f 84 91 00 00 00 83 7d e0 00 74 71 8b 45 e0 03 45 dc 3b 45 e8 7e 42 81 45 e8 00 00 02 00 ff 75 e8 6a 00 ff 75 f0 e8 ?? ?? ff ff 85 c0 74 68 89 45 e4 } //2
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_03_2  & 1)*2+(#a_03_3  & 1)*2+(#a_03_4  & 1)*2) >=6
 
}