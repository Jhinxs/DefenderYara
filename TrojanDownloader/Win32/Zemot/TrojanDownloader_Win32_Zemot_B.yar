
rule TrojanDownloader_Win32_Zemot_B{
	meta:
		description = "TrojanDownloader:Win32/Zemot.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {81 e6 ff 00 00 00 8a 14 06 30 14 39 47 3b 7d 0c 72 c8 } //1
		$a_00_1 = {76 00 66 00 73 00 5c 00 73 00 6f 00 66 00 74 00 33 00 32 00 2e 00 64 00 6c 00 6c 00 } //1 vfs\soft32.dll
		$a_03_2 = {89 08 c7 40 04 ?? ?? ?? ?? c7 40 08 ?? ?? ?? ?? 8b 56 04 8b 4e 0c 2b 4a 34 81 c1 ?? ?? ?? ?? 74 14 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1) >=2
 
}