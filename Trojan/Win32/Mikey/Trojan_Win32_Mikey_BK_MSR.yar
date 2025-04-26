
rule Trojan_Win32_Mikey_BK_MSR{
	meta:
		description = "Trojan:Win32/Mikey.BK!MSR,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_00_0 = {4c 45 52 4b 42 6c 65 52 4d 2e 70 64 62 } //1 LERKBleRM.pdb
		$a_00_1 = {64 00 65 00 76 00 65 00 6c 00 6f 00 70 00 65 00 72 00 73 00 45 00 65 00 73 00 79 00 73 00 74 00 65 00 6d 00 73 00 43 00 68 00 72 00 6f 00 6d 00 65 00 69 00 62 00 72 00 6f 00 77 00 73 00 65 00 72 00 73 00 7a 00 } //1 developersEesystemsChromeibrowsersz
		$a_03_2 = {8b 44 24 0c 88 c1 88 4c 24 27 c7 44 24 28 00 00 00 00 8a 44 24 27 8b 4c 24 28 8b 54 24 2c 81 f2 [0-04] 8b 74 24 08 88 04 0e 01 d1 89 4c 24 28 8b 54 24 14 39 d1 } //2
		$a_01_3 = {8a 9c 1c 94 00 00 00 8b 7c 24 68 89 4c 24 64 8b 4c 24 74 32 1c 0f 66 89 b4 24 c8 01 00 00 88 1c 0f } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*2+(#a_01_3  & 1)*1) >=2
 
}