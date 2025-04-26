
rule TrojanDownloader_Win32_Nuwar_F{
	meta:
		description = "TrojanDownloader:Win32/Nuwar.F,SIGNATURE_TYPE_PEHSTR_EXT,06 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {8b 45 cc 8b 4d d4 8b 55 c8 8b 04 81 2b 44 95 e4 8b 4d cc 8b 55 d4 89 04 8a } //3
		$a_02_1 = {55 8b ec 83 ec 4c 53 56 [0-70] c7 45 d0 ?? ?? 40 00 [0-40] 6a 06 59 } //3
		$a_00_2 = {68 b8 0b 00 00 ff 15 } //1
		$a_00_3 = {8b 45 e0 2b 45 d8 3d b8 0b 00 00 73 } //2
	condition:
		((#a_00_0  & 1)*3+(#a_02_1  & 1)*3+(#a_00_2  & 1)*1+(#a_00_3  & 1)*2) >=4
 
}