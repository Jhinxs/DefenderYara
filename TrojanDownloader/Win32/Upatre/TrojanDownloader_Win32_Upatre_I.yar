
rule TrojanDownloader_Win32_Upatre_I{
	meta:
		description = "TrojanDownloader:Win32/Upatre.I,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 08 00 00 "
		
	strings :
		$a_01_0 = {8b 4e 24 03 c8 03 c8 8b 45 fc 03 c8 0f b7 01 8b 4e 1c 8d 04 81 8b 4d fc 8b 04 01 } //5
		$a_01_1 = {2b c2 8b 08 fe c9 80 f9 4c 75 f5 fe c5 80 fd 5b 75 ee 53 } //5
		$a_01_2 = {51 e8 14 00 00 00 46 47 59 4b 74 07 49 75 f1 } //1
		$a_01_3 = {51 e8 12 00 00 00 59 4b 74 07 49 75 f3 5b } //1
		$a_03_4 = {51 8b 06 8b 0f e8 ?? ?? ?? ?? e8 ?? ?? ?? ?? 47 4b 8b c3 59 } //1
		$a_01_5 = {8b 06 32 c1 c3 } //1
		$a_01_6 = {8b 55 e4 0f b7 42 3c 03 d0 0f b7 4a 06 83 c2 14 0f b7 02 } //3
		$a_00_7 = {00 55 70 64 61 74 65 73 20 64 6f 77 6e 6c 6f 61 64 65 72 00 } //2 唀摰瑡獥搠睯汮慯敤r
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*3+(#a_00_7  & 1)*2) >=10
 
}