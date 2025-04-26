
rule TrojanDownloader_Win32_Bradop_C{
	meta:
		description = "TrojanDownloader:Win32/Bradop.C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {08 00 48 00 54 00 4d 00 4c 00 46 00 49 00 4c 00 45 00 06 00 58 00 57 00 52 00 45 00 47 00 43 00 } //1
		$a_03_1 = {8b c3 34 01 84 c0 74 ?? ?? ?? ?? ?? ?? ?? 0f b6 54 3a ff e8 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? e8 ?? ?? ?? ?? 80 f3 01 47 4e 75 } //1
		$a_03_2 = {b9 01 04 00 00 e8 ?? ?? ?? ?? 8b 85 fc f9 ff ff b9 0f 00 00 00 33 d2 e8 ?? ?? ?? ff 8b 85 00 fa ff ff 50 8d 95 f8 f9 ff ff b8 ?? ?? ?? ?? e8 ?? ?? ff ff 8b 95 f8 f9 ff ff } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}