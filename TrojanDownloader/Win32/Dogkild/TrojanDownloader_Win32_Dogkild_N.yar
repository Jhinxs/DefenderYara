
rule TrojanDownloader_Win32_Dogkild_N{
	meta:
		description = "TrojanDownloader:Win32/Dogkild.N,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {8d 45 ec 50 ff 15 ?? ?? ?? ?? 66 81 7d ec d7 07 0f 86 d0 00 00 00 be 04 01 00 00 8d 85 e8 fe ff ff 56 50 ff 15 ?? ?? ?? ?? 8d 85 e8 fe ff ff 68 ?? ?? ?? ?? 50 e8 ?? ?? ?? ?? 8d 85 e8 fe ff ff 68 ?? ?? ?? ?? 50 e8 ?? ?? ?? ?? 83 c4 10 66 81 7d ec d8 07 76 16 8d 85 e8 fe ff ff } //1
		$a_02_1 = {33 db 53 68 80 00 00 00 6a 03 53 53 68 00 00 00 c0 68 ?? ?? ?? ?? ff 15 ?? ?? ?? ?? 83 f8 ff 89 45 fc 74 23 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}