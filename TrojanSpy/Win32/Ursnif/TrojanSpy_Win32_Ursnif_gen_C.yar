
rule TrojanSpy_Win32_Ursnif_gen_C{
	meta:
		description = "TrojanSpy:Win32/Ursnif.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 "
		
	strings :
		$a_01_0 = {5c 5c 2e 5c 6d 61 69 6c 73 6c 6f 74 5c 6d 73 6c 30 } //2 \\.\mailslot\msl0
		$a_01_1 = {0f b7 0b c1 e9 0c 83 f9 03 74 17 83 f9 0a 75 27 0f b7 0b 81 e1 ff 0f 00 00 03 ce 01 01 11 51 04 } //1
		$a_03_2 = {70 6e 6c 73 ff d6 89 45 ?? 3b c7 0f 84 ?? 00 00 00 } //1
		$a_01_3 = {8b 43 3c 03 c3 0f b7 50 06 6b d2 28 56 0f b7 70 14 81 f1 3a 24 00 00 0f b7 c9 03 d0 } //1
		$a_03_4 = {c6 04 07 00 83 7e 10 04 72 ?? 8b 46 04 31 07 8b 45 ?? 8b 4d ?? 89 38 8b 46 10 89 01 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1) >=10
 
}