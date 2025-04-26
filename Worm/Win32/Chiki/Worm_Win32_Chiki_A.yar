
rule Worm_Win32_Chiki_A{
	meta:
		description = "Worm:Win32/Chiki.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 "
		
	strings :
		$a_01_0 = {49 20 6a 75 73 74 20 77 61 6e 74 20 74 6f 20 73 61 79 20 49 20 6c 6f 76 65 20 4d 69 6c 6b 6f 20 61 6e 64 20 49 20 6e 65 65 64 20 61 20 64 72 69 6e 6b } //3 I just want to say I love Milko and I need a drink
		$a_01_1 = {5f 46 69 63 68 69 65 72 73 2e 65 78 65 } //1 _Fichiers.exe
		$a_01_2 = {5f 53 61 76 65 73 2e 65 78 65 } //1 _Saves.exe
		$a_01_3 = {5c 63 68 69 43 6b 69 65 2e 65 78 65 } //1 \chiCkie.exe
		$a_01_4 = {57 3a 00 00 58 3a 00 00 59 3a 00 00 5a 3a 00 00 } //1
		$a_03_5 = {be 18 00 00 00 bb ?? ?? ?? ?? 8b 03 50 e8 ?? ?? ?? ?? 83 f8 02 0f 85 36 01 00 00 } //4
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*4) >=7
 
}