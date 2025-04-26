
rule Trojan_Win32_Qakbot_DG_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.DG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {8b 00 33 45 a0 89 45 a0 8b 45 a0 8b 55 d8 89 02 33 c0 89 45 a4 8b 45 a8 83 c0 04 03 45 a4 89 45 a8 e8 } //1
		$a_03_1 = {8b d8 8b 45 d8 83 c0 04 03 45 a4 03 d8 e8 [0-04] 2b d8 e8 [0-04] 2b d8 e8 [0-04] 03 d8 89 5d d8 8b 45 a8 3b 45 cc 0f 82 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule Trojan_Win32_Qakbot_DG_MTB_2{
	meta:
		description = "Trojan:Win32/Qakbot.DG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 "
		
	strings :
		$a_81_0 = {4d 75 74 61 6e 74 20 47 65 6e 65 20 53 6f 66 74 77 61 72 65 } //1 Mutant Gene Software
		$a_81_1 = {50 6f 63 6b 65 74 20 52 61 64 69 6f 20 50 6c 61 79 65 72 } //1 Pocket Radio Player
		$a_81_2 = {54 6f 6f 20 6d 61 6e 79 20 68 6f 6f 6b 20 69 64 73 } //1 Too many hook ids
		$a_81_3 = {73 74 61 67 65 72 5f 31 2e 64 6c 6c } //1 stager_1.dll
		$a_81_4 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllRegisterServer
		$a_81_5 = {67 65 74 68 6f 73 74 62 79 6e 61 6d 65 } //1 gethostbyname
		$a_81_6 = {47 65 74 43 6c 69 70 62 6f 61 72 64 44 61 74 61 } //1 GetClipboardData
		$a_81_7 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
		$a_81_8 = {47 65 74 4b 65 79 53 74 61 74 65 } //1 GetKeyState
		$a_81_9 = {4d 69 6e 47 57 2d 57 36 34 20 69 36 38 36 2d 70 6f 73 69 78 2d 64 77 61 72 66 } //1 MinGW-W64 i686-posix-dwarf
		$a_81_10 = {69 6e 66 6c 61 74 65 } //1 inflate
		$a_81_11 = {64 65 66 6c 61 74 65 } //1 deflate
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1) >=12
 
}