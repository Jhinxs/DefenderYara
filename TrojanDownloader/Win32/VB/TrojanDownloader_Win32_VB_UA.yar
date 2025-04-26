
rule TrojanDownloader_Win32_VB_UA{
	meta:
		description = "TrojanDownloader:Win32/VB.UA,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_00_0 = {75 72 6c 6d 6f 6e 00 00 13 00 00 00 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //2
		$a_02_1 = {85 d2 74 05 e9 15 01 00 00 c7 45 fc 07 00 00 00 ba ?? ?? ?? ?? 8d 4d c4 ff 15 ?? ?? ?? ?? ba ?? ?? ?? ?? 8d 4d c8 ff 15 ?? ?? ?? ?? 8d 45 90 90 50 8d 4d c4 51 8d 55 c8 52 8b 45 08 8b 08 8b 55 08 52 ff 91 f8 06 00 00 } //1
		$a_02_2 = {85 c0 74 05 e9 1e 01 00 00 c7 45 fc 08 00 00 00 ba ?? ?? ?? ?? 8d 4d b4 ff 15 ?? ?? ?? ?? ba ?? ?? ?? ?? 8d 4d b8 ff 15 ?? ?? ?? ?? 8d 4d 80 51 8d 55 b4 52 8d 45 b8 50 8b 4d 08 8b 11 8b 45 08 50 ff 92 f8 06 00 00 } //1
		$a_00_3 = {44 6f 77 46 69 6c 65 } //2 DowFile
	condition:
		((#a_00_0  & 1)*2+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*2) >=5
 
}