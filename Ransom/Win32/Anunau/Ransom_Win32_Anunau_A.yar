
rule Ransom_Win32_Anunau_A{
	meta:
		description = "Ransom:Win32/Anunau.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0b 00 00 "
		
	strings :
		$a_00_0 = {00 25 30 38 58 25 30 38 58 25 63 00 } //1 ─㠰╘㠰╘c
		$a_00_1 = {49 6e 76 6d 6f 64 20 6f 66 20 25 64 20 25 25 20 25 64 } //1 Invmod of %d %% %d
		$a_00_2 = {70 6c 75 6d 62 65 72 40 63 6f 63 6b 2e 6c 69 } //1 plumber@cock.li
		$a_00_3 = {64 65 63 72 79 70 74 69 6f 6e 2c 73 6f 20 79 6f 75 20 77 69 6c 6c 20 70 61 79 20 6d 65 20 61 6e 64 20 74 68 65 6d 20 61 6e 79 77 61 79 73 2e 50 6c 65 61 73 65 } //1 decryption,so you will pay me and them anyways.Please
		$a_00_4 = {63 61 6c 6c 20 75 6e 69 6e 73 74 61 6c 6c 20 2f 6e 6f 69 6e 74 65 72 61 63 74 69 76 65 } //1 call uninstall /nointeractive
		$a_00_5 = {44 69 73 61 62 6c 65 52 6f 75 74 69 6e 65 6c 79 54 61 6b 69 6e 67 41 63 74 69 6f 6e } //1 DisableRoutinelyTakingAction
		$a_00_6 = {44 69 73 61 62 6c 65 45 6e 68 61 6e 63 65 64 4e 6f 74 69 66 69 63 61 74 69 6f 6e 73 } //1 DisableEnhancedNotifications
		$a_03_7 = {6a 5c 58 8b 4d fc 66 89 84 4d ?? ?? ff ff 6a 73 58 8b 4d fc 66 89 84 4d ?? ?? ff ff 6a 74 } //2
		$a_03_8 = {75 21 6a 02 58 c1 e0 00 8b 4d ?? 0f b7 04 01 83 f8 3a 75 0f } //1
		$a_03_9 = {6a 02 58 6b c0 00 0f b7 84 05 ?? ?? ff ff 83 f8 25 74 09 c7 45 f8 01 00 00 00 eb 04 } //1
		$a_03_10 = {74 09 c7 45 f0 66 00 00 00 eb 07 c7 45 f0 73 00 00 00 ff 75 f0 ff 35 ?? ?? ?? ?? ff 35 ?? ?? ?? ?? 68 } //2
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_03_7  & 1)*2+(#a_03_8  & 1)*1+(#a_03_9  & 1)*1+(#a_03_10  & 1)*2) >=6
 
}
rule Ransom_Win32_Anunau_A_2{
	meta:
		description = "Ransom:Win32/Anunau.A,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {44 00 65 00 76 00 69 00 63 00 65 00 49 00 44 00 00 00 00 00 01 00 00 00 44 69 73 61 62 6c 65 41 6e 74 69 53 70 79 77 61 72 65 00 00 44 69 73 61 62 6c 65 52 6f 75 74 69 6e 65 6c 79 54 61 6b 69 6e 67 41 63 74 69 6f 6e 00 00 00 00 53 4f 46 54 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}