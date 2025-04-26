
rule TrojanDropper_Win32_Lecpetex_A{
	meta:
		description = "TrojanDropper:Win32/Lecpetex.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 "
		
	strings :
		$a_01_0 = {2f 72 61 77 2e 70 68 70 3f 69 3d 67 47 32 32 48 46 36 4c 00 } //2 爯睡瀮灨椿朽㉇䠲㙆L
		$a_03_1 = {68 a1 a2 03 00 68 ?? ?? ?? 00 8b 55 c0 52 e8 } //2
		$a_03_2 = {8b 45 fc 50 68 3a 77 00 00 68 ?? ?? ?? 00 e8 ?? ?? ff ff 83 c4 0c } //2
		$a_03_3 = {8b 45 fc 50 68 dd e3 00 00 68 ?? ?? ?? 00 e8 ?? ?? ff ff 83 c4 0c } //2
		$a_03_4 = {68 00 f6 00 00 e8 ?? ?? ff ff 83 c4 04 8b 4d 08 03 01 8b 55 08 89 02 } //1
		$a_01_5 = {25 ff 00 00 00 33 d2 b9 0a 00 00 00 f7 f1 83 c2 30 88 15 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_03_3  & 1)*2+(#a_03_4  & 1)*1+(#a_01_5  & 1)*1) >=3
 
}