
rule TrojanDropper_Win32_Sharke_B{
	meta:
		description = "TrojanDropper:Win32/Sharke.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_02_0 = {56 57 8b 7c 24 0c 57 ff 15 ?? ?? ?? 00 57 68 e8 00 41 00 8b f0 ff 15 ?? ?? ?? 00 81 fe 04 01 00 00 73 22 32 c9 85 f6 76 1c 33 c0 eb 03 8d 49 00 8a d1 80 c2 02 30 90 90 e8 00 41 00 80 c1 01 0f b6 c1 3b c6 72 eb 5f b8 e8 00 41 00 5e c3 } //1
		$a_02_1 = {6a 00 8b f0 68 05 42 02 00 56 e8 ?? ?? ?? 00 56 6a 01 8d 84 24 64 03 00 00 6a 26 50 e8 ?? ?? ?? 00 56 e8 ?? ?? ?? 00 83 c4 28 } //1
		$a_01_2 = {69 66 76 6b 63 6b 3b 3b 24 6f 60 61 } //1 ifvkck;;$o`a
		$a_01_3 = {77 70 61 77 35 35 26 6d 66 67 } //1 wpaw55&mfg
		$a_01_4 = {63 67 72 64 76 6e 3b 3b 24 6f 60 61 } //1 cgrdvn;;$o`a
		$a_01_5 = {75 6a 6a 6c 68 62 7c 27 6e 67 60 } //1 ujjlhb|'ng`
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}