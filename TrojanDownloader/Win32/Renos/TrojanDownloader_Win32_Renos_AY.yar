
rule TrojanDownloader_Win32_Renos_AY{
	meta:
		description = "TrojanDownloader:Win32/Renos.AY,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_03_0 = {8b f8 8b f1 2b f9 8a 0e 80 f1 ?? 88 0c 37 74 ?? [0-03] 46 [0-03] 75 } //2
		$a_01_1 = {b9 0a 00 00 00 b8 68 58 4d 56 66 ba 58 56 ed 81 fb 68 58 4d 56 0f 94 c0 0f b6 c0 89 85 8c fe ff ff eb } //2
		$a_03_2 = {6a 00 6a 03 68 00 00 00 80 8d 95 98 fe ff ff b9 ?? ?? ?? ?? e8 ?? ?? ?? 00 50 ff 15 ?? ?? ?? ?? 89 85 90 90 fe ff ff 83 f8 ff 75 03 cc eb } //2
		$a_01_3 = {48 41 5f 25 30 38 78 } //1 HA_%08x
		$a_00_4 = {5c 2a 2e 74 78 74 } //1 \*.txt
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2+(#a_03_2  & 1)*2+(#a_01_3  & 1)*1+(#a_00_4  & 1)*1) >=6
 
}