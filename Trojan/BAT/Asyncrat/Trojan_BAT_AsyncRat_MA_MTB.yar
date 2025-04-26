
rule Trojan_BAT_AsyncRat_MA_MTB{
	meta:
		description = "Trojan:BAT/AsyncRat.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {7e 05 00 00 04 72 43 00 00 70 7e 23 00 00 0a 6f 24 00 00 0a 28 05 00 00 06 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_AsyncRat_MA_MTB_2{
	meta:
		description = "Trojan:BAT/AsyncRat.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_81_0 = {67 6e 69 72 74 53 34 36 65 73 61 42 6d 6f 72 46 } //1 gnirtS46esaBmorF
		$a_81_1 = {74 72 65 76 6e 6f 43 2e 6d 65 74 73 79 53 } //1 trevnoC.metsyS
		$a_81_2 = {59 58 5a 31 32 33 34 35 36 37 38 39 30 } //1 YXZ1234567890
		$a_81_3 = {56 69 64 79 61 47 61 6d 65 } //1 VidyaGame
		$a_81_4 = {53 74 72 52 65 76 65 72 73 65 } //1 StrReverse
		$a_81_5 = {49 2d 2d 6e 2d 2d 76 2d 2d 6f 2d 2d 6b 2d 2d 65 } //1 I--n--v--o--k--e
		$a_81_6 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_7 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerBrowsableAttribute
		$a_81_8 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1) >=9
 
}
rule Trojan_BAT_AsyncRat_MA_MTB_3{
	meta:
		description = "Trojan:BAT/AsyncRat.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_03_0 = {13 20 03 11 1e 11 20 16 11 20 8e 69 28 ?? ?? ?? 0a 00 09 7b ?? ?? ?? 04 11 0c 11 1c 58 11 20 11 20 8e 69 12 00 28 ?? ?? ?? 06 16 fe 01 13 21 11 21 2c 06 } //1
		$a_01_1 = {3a 00 2f 00 2f 00 34 00 35 00 2e 00 31 00 34 00 37 00 2e 00 32 00 33 00 30 00 2e 00 37 00 31 00 } //1 ://45.147.230.71
		$a_01_2 = {47 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //1 GetThreadContext
		$a_01_3 = {57 6f 77 36 34 47 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //1 Wow64GetThreadContext
		$a_01_4 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 ReadProcessMemory
		$a_01_5 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 WriteProcessMemory
		$a_01_6 = {52 65 73 75 6d 65 54 68 72 65 61 64 } //1 ResumeThread
		$a_01_7 = {47 65 74 42 79 74 65 73 } //1 GetBytes
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}