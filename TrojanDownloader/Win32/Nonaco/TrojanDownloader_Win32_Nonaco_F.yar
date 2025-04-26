
rule TrojanDownloader_Win32_Nonaco_F{
	meta:
		description = "TrojanDownloader:Win32/Nonaco.F,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_03_0 = {89 4d f8 50 c6 45 ?? 75 c6 45 ?? 72 c6 45 ?? 6c c6 45 ?? 63 c6 45 ?? 6c c6 45 ?? 69 } //2
		$a_03_1 = {89 4d f4 50 c6 45 ?? 75 c6 45 ?? 72 c6 45 ?? 6c c6 45 ?? 63 c6 45 ?? 6c c6 45 ?? 69 } //2
		$a_03_2 = {39 45 08 59 73 12 8b 45 08 6a 03 5b 8d 8c 05 ?? ?? ff ff 99 f7 fb 28 11 ff 45 08 } //1
		$a_01_3 = {8d 78 0d 8d 04 0f bb ff 00 00 00 99 f7 fb 32 55 0f 88 16 8a 41 01 46 41 84 c0 88 45 0f 75 e4 } //1
		$a_03_4 = {74 04 6a 01 eb 19 8d 85 00 fc ff ff 68 ?? ?? ?? ?? 50 e8 ?? ?? ff ff 59 84 c0 59 74 05 6a 02 58 eb 03 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1) >=3
 
}