
rule TrojanSpy_Win32_Delf_IG{
	meta:
		description = "TrojanSpy:Win32/Delf.IG,SIGNATURE_TYPE_PEHSTR_EXT,ffffff98 08 ffffffd0 07 04 00 00 "
		
	strings :
		$a_02_0 = {89 45 f0 89 45 ec 33 c0 55 68 ?? ?? 40 00 64 ff 30 64 89 20 c6 45 ff 00 e8 ?? ?? ff ff 83 c4 f4 db 3c 24 9b 8d 85 e8 fe ff ff e8 ?? ?? ff ff 8d 95 e8 fe ff ff 8d 45 ec e8 ?? ?? ff ff 68 ?? ?? 40 00 ff 35 ?? ?? 40 00 68 ?? ?? 40 00 ff 35 ?? ?? 40 00 68 ?? ?? 40 00 ff 75 ec 8d 85 e4 fe ff ff ba 06 00 00 00 e8 } //1000
		$a_02_1 = {83 3d 88 96 40 00 00 0f 84 92 00 00 00 68 8c 96 40 00 e8 ?? ?? ff ff 68 ?? ?? 40 00 ff 35 ?? ?? 40 00 68 ?? ?? 40 00 ff 35 ?? ?? 40 00 68 ?? ?? 40 00 ff 35 ?? ?? 40 00 68 ?? ?? 40 00 ff 35 ?? ?? 40 00 68 ?? ?? 40 00 8d 55 f4 b8 01 00 00 00 e8 ?? ?? ff ff ff 75 f4 8d 45 f8 ba 0a 00 00 00 e8 } //1000
		$a_00_2 = {ff ff ff ff 08 00 00 00 26 6c 61 73 74 69 64 3d } //100
		$a_00_3 = {ff ff ff ff 06 00 00 00 26 72 61 6e 64 3d } //100
	condition:
		((#a_02_0  & 1)*1000+(#a_02_1  & 1)*1000+(#a_00_2  & 1)*100+(#a_00_3  & 1)*100) >=2000
 
}