
rule TrojanDownloader_Win32_Upatre_D{
	meta:
		description = "TrojanDownloader:Win32/Upatre.D,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_01_0 = {00 55 70 64 61 74 65 73 20 64 6f 77 6e 6c 6f 61 64 65 72 00 } //1 唀摰瑡獥搠睯汮慯敤r
		$a_03_1 = {ba 00 00 ff ff 55 8b ec 83 ec 10 8b 45 ?? 23 c2 f7 d2 42 03 c2 2b c2 8b 08 80 f9 4d 75 ?? 80 fd 5a 75 ?? 0f b7 48 3c 53 89 45 ?? 8d 44 01 18 b9 09 01 00 00 56 57 41 41 66 39 08 } //5
		$a_03_2 = {ba 01 00 ff ff 8b 45 ?? e8 ?? ?? ?? ?? 03 c2 2b c2 8b 08 80 f9 4d 75 ?? 80 fd 5a 75 ?? 53 e8 ?? ?? ?? ?? 41 56 57 41 66 39 08 75 ?? e8 ?? ?? ?? ?? 33 d2 8b 5d ?? 8b ca 4b } //5
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*5+(#a_03_2  & 1)*5) >=6
 
}
rule TrojanDownloader_Win32_Upatre_D_2{
	meta:
		description = "TrojanDownloader:Win32/Upatre.D,SIGNATURE_TYPE_ARHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {81 e6 ff 00 00 00 8a 14 06 30 14 39 47 3b 7d 0c 72 c8 } //1
		$a_00_1 = {76 00 66 00 73 00 5c 00 73 00 6f 00 66 00 74 00 33 00 32 00 2e 00 64 00 6c 00 6c 00 } //1 vfs\soft32.dll
		$a_03_2 = {89 08 c7 40 04 ?? ?? ?? ?? c7 40 08 ?? ?? ?? ?? 8b 56 04 8b 4e 0c 2b 4a 34 81 c1 ?? ?? ?? ?? 74 14 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1) >=2
 
}