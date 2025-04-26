
rule Backdoor_Win32_Zegost_K{
	meta:
		description = "Backdoor:Win32/Zegost.K,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {b2 74 b1 5c 50 c6 44 24 ?? 53 c6 44 24 ?? 6f c6 44 24 ?? 66 } //1
		$a_02_1 = {b2 65 b0 73 51 c6 44 24 ?? 47 } //1
		$a_02_2 = {44 51 c6 44 24 ?? 65 c6 44 24 ?? 62 c6 44 24 ?? 75 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}
rule Backdoor_Win32_Zegost_K_2{
	meta:
		description = "Backdoor:Win32/Zegost.K,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_03_0 = {80 30 44 40 3d ?? ?? ?? ?? 72 f5 } //2
		$a_01_1 = {68 6f 75 6e 74 68 69 63 6b 43 68 47 65 74 54 54 } //2 hounthickChGetTT
		$a_00_2 = {5c 5c 2e 5c 44 61 72 6b } //1 \\.\Dark
		$a_00_3 = {25 75 2e 31 39 33 2e 25 64 2e 25 64 } //1 %u.193.%d.%d
		$a_00_4 = {25 73 20 53 50 25 64 } //1 %s SP%d
		$a_02_5 = {57 69 6e 53 74 61 30 5c 44 65 66 61 75 6c 74 00 63 3a 5c [0-03] 2e 65 78 65 } //1
		$a_01_6 = {74 23 3d 00 00 00 08 72 07 2d 00 00 00 80 eb 06 8d 04 28 83 c0 02 52 50 } //3
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_02_5  & 1)*1+(#a_01_6  & 1)*3) >=5
 
}