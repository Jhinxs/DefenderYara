
rule TrojanDownloader_Win32_Small_JU{
	meta:
		description = "TrojanDownloader:Win32/Small.JU,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {25 73 68 74 6d 6c 2f 25 73 5f 70 6c 75 73 2e 6a 73 } //1 %shtml/%s_plus.js
		$a_00_1 = {25 73 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 49 45 58 50 4c 4f 52 45 2e 45 58 45 20 25 73 } //1 %s:\Program Files\Internet Explorer\IEXPLORE.EXE %s
		$a_03_2 = {68 e8 03 00 00 ff d3 51 8d 55 e4 8b cc 89 ?? ?? ff ff ff 52 e8 ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 04 68 20 4e 00 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}