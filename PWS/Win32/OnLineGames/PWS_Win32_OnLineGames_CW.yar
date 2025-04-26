
rule PWS_Win32_OnLineGames_CW{
	meta:
		description = "PWS:Win32/OnLineGames.CW,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {4b 56 4d 6f 6e 58 50 2e 65 78 65 00 61 76 70 2e 65 78 65 00 5c 6a 78 6f 6e 6c 69 6e 65 2e 65 78 } //1
		$a_03_1 = {8b cb 33 c0 8d bc ?? ?? 04 00 00 68 b8 0b 00 00 f3 ab 89 54 ?? ?? ff d5 8d 94 ?? ?? 04 00 00 52 68 04 01 00 00 } //1
		$a_03_2 = {68 10 27 00 00 ff d5 8b 3d ?? ?? 40 00 8b 1d ?? ?? 40 00 6a 00 56 6a 00 6a 01 ff d3 50 ff d7 68 ?? ?? 40 00 e8 ?? ?? ff ff 8b f0 83 c4 04 85 f6 77 e1 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}