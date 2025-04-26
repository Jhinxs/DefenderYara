
rule TrojanDownloader_Win32_Bofang_B{
	meta:
		description = "TrojanDownloader:Win32/Bofang.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_03_0 = {72 13 42 8b c6 8a 08 84 c9 74 0a 80 f1 ?? 88 08 40 fe ca 75 f0 } //2
		$a_03_1 = {50 6a 00 68 ?? ?? 40 00 8b 45 ?? 50 8b 00 ff 50 0c 85 c0 0f 85 ?? 01 00 00 83 7d ?? 00 0f 84 ?? 01 00 00 6a 00 8b 45 ?? 50 8b 00 ff 50 54 } //2
		$a_01_2 = {73 69 70 61 62 6f 74 } //1 sipabot
		$a_01_3 = {6b 69 77 69 62 6f 74 } //1 kiwibot
		$a_03_4 = {5c 41 64 6f 62 65 [0-05] 5c 4d 61 6e 61 67 65 72 2e 65 78 65 } //1
		$a_00_5 = {74 61 73 6b 2e 70 68 70 3f 76 3d } //1 task.php?v=
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1+(#a_00_5  & 1)*1) >=5
 
}