
rule TrojanDownloader_Win32_Zojectdow_STB{
	meta:
		description = "TrojanDownloader:Win32/Zojectdow.STB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 "
		
	strings :
		$a_03_0 = {8b 45 f4 83 c0 01 89 45 f4 81 7d f4 ?? ?? ?? ?? 7d ?? 8b 4d ec 03 4d f4 0f be 11 ?? f2 [0-04] 8b 45 ec 03 45 f4 88 10 eb } //1
		$a_03_1 = {8b 4d f4 83 c1 01 89 4d f4 81 7d f4 ?? ?? ?? ?? 7d 1e 8b 55 f4 81 f2 ?? ?? ?? ?? 8b 45 ec 03 45 f4 0f be 08 33 ca 8b 55 ec 03 55 f4 88 0a eb } //1
		$a_03_2 = {8b 45 f4 83 c0 01 89 45 f4 81 7d f4 ?? ?? ?? ?? 7d 1e 8b 4d f4 81 f1 ?? ?? ?? ?? 8b 55 ec 03 55 f4 0f be 02 33 c1 8b 4d ec 03 4d f4 88 01 eb } //1
		$a_03_3 = {c6 00 2e 8b 4d ?? 83 c1 01 89 ?? ?? ?? ?? ?? c6 02 70 8b [0-10] c6 01 73 8b [0-10] c6 00 31 } //5
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*5) >=6
 
}
rule TrojanDownloader_Win32_Zojectdow_STB_2{
	meta:
		description = "TrojanDownloader:Win32/Zojectdow.STB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 "
		
	strings :
		$a_03_0 = {8b 45 f4 83 c0 01 89 45 f4 81 7d f4 ?? ?? ?? ?? 7d ?? 8b 4d ec 03 4d f4 0f be 11 ?? f2 [0-04] 8b 45 ec 03 45 f4 88 10 eb } //1
		$a_03_1 = {8b 4d f4 83 c1 01 89 4d f4 81 7d f4 ?? ?? ?? ?? 7d 1e 8b 55 f4 81 f2 ?? ?? ?? ?? 8b 45 ec 03 45 f4 0f be 08 33 ca 8b 55 ec 03 55 f4 88 0a eb } //1
		$a_03_2 = {8b 45 f4 83 c0 01 89 45 f4 81 7d f4 ?? ?? ?? ?? 7d 1e 8b 4d f4 81 f1 ?? ?? ?? ?? 8b 55 ec 03 55 f4 0f be 02 33 c1 8b 4d ec 03 4d f4 88 01 eb } //1
		$a_03_3 = {c6 02 2e 8b 45 ?? 83 c0 01 89 ?? ?? ?? ?? ?? c6 01 70 8b [0-10] c6 00 73 8b [0-10] c6 02 31 } //5
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*5) >=6
 
}