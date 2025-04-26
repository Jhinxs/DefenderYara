
rule Trojan_Win32_Qakbot_GG_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {01 02 8b 45 d8 03 45 b0 03 45 e8 89 45 b4 6a 00 e8 ?? ?? ?? ?? 8b 5d b4 2b d8 6a 00 e8 ?? ?? ?? ?? 2b d8 8b 45 ec 31 18 83 45 e8 04 83 45 ec 04 8b 45 e8 3b 45 e4 72 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Qakbot_GG_MTB_2{
	meta:
		description = "Trojan:Win32/Qakbot.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {4d 5a 8a 44 ?? ?? 8a 4c ?? ?? f6 e1 [0-1e] 50 45 } //1
		$a_02_1 = {32 0c 02 8b ?? ?? ?? 88 0c 30 8b ?? ?? ?? 8a ?? ?? ?? 32 ?? ?? ?? 88 ?? ?? ?? 83 ?? 01 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}
rule Trojan_Win32_Qakbot_GG_MTB_3{
	meta:
		description = "Trojan:Win32/Qakbot.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {89 c1 8b 45 [0-02] fc f3 a4 57 c7 04 [0-06] 59 55 33 2c [0-02] 0b ab [0-04] 83 e0 00 31 e8 5d 56 81 04 [0-06] 29 34 [0-02] 8f 83 [0-04] 21 8b [0-04] 6a 00 31 2c [0-02] 50 5d 03 ab [0-04] 89 e8 5d ff e0 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Qakbot_GG_MTB_4{
	meta:
		description = "Trojan:Win32/Qakbot.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {bb f1 32 01 00 bb f1 32 01 00 bb f1 32 01 00 bb f1 32 01 00 bb f1 32 01 00 bb f1 32 01 00 bb f1 32 01 00 bb f1 32 01 00 bb f1 32 01 00 bb f1 32 01 00 33 05 [0-04] 8b c8 8b d1 89 15 [0-04] a1 [0-04] 8b 0d [0-04] 89 08 5f 5b 5d c3 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Qakbot_GG_MTB_5{
	meta:
		description = "Trojan:Win32/Qakbot.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {8a 04 06 88 04 [0-02] 8b 0d [0-04] 83 [0-02] 01 89 0d [0-04] eb [0-02] 5e 8b e5 5d c3 } //1
		$a_02_1 = {8b d2 8b d2 8b d2 [0-1e] a1 [0-04] a3 [0-04] a1 [0-04] 8b d8 a1 [0-04] 33 d9 c7 05 [0-04] 00 00 00 00 01 1d [0-04] a1 [0-04] 8b 0d [0-04] 89 08 5b 5d c3 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}
rule Trojan_Win32_Qakbot_GG_MTB_6{
	meta:
		description = "Trojan:Win32/Qakbot.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 08 00 00 "
		
	strings :
		$a_80_0 = {73 74 61 67 65 72 5f 31 2e 64 6c 6c } //stager_1.dll  10
		$a_80_1 = {52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //RegisterServer  10
		$a_80_2 = {47 65 74 43 61 70 74 75 72 65 } //GetCapture  1
		$a_80_3 = {47 65 74 41 73 79 6e 63 4b 65 79 53 74 61 74 65 } //GetAsyncKeyState  1
		$a_80_4 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 } //VirtualAlloc  1
		$a_80_5 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //VirtualProtect  1
		$a_80_6 = {47 65 74 41 63 74 69 76 65 57 69 6e 64 6f 77 } //GetActiveWindow  1
		$a_80_7 = {47 65 74 43 75 72 72 65 6e 74 54 68 72 65 61 64 49 64 } //GetCurrentThreadId  1
	condition:
		((#a_80_0  & 1)*10+(#a_80_1  & 1)*10+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1+(#a_80_6  & 1)*1+(#a_80_7  & 1)*1) >=25
 
}
rule Trojan_Win32_Qakbot_GG_MTB_7{
	meta:
		description = "Trojan:Win32/Qakbot.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 0a 00 00 "
		
	strings :
		$a_80_0 = {73 74 61 67 65 72 5f 31 2e 64 6c 6c } //stager_1.dll  10
		$a_80_1 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //DllRegisterServer  10
		$a_80_2 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d 20 41 6e 74 69 56 69 72 75 73 50 72 6f 64 75 63 74 } //SELECT * FROM AntiVirusProduct  1
		$a_80_3 = {4c 6f 6f 6b 75 70 41 63 63 6f 75 6e 74 53 69 64 57 } //LookupAccountSidW  1
		$a_80_4 = {4c 6f 6f 6b 75 70 41 63 63 6f 75 6e 74 4e 61 6d 65 57 } //LookupAccountNameW  1
		$a_80_5 = {77 69 6e 73 74 61 30 5c 64 65 66 61 75 6c 74 } //winsta0\default  1
		$a_80_6 = {6d 65 6d 73 65 74 } //memset  1
		$a_80_7 = {47 65 74 55 73 65 72 50 72 6f 66 69 6c 65 44 69 72 65 63 74 6f 72 79 57 } //GetUserProfileDirectoryW  1
		$a_81_8 = {55 53 45 52 50 52 4f 46 49 4c 45 } //1 USERPROFILE
		$a_80_9 = {4f 70 65 6e 50 72 6f 63 65 73 73 54 6f 6b 65 6e } //OpenProcessToken  1
	condition:
		((#a_80_0  & 1)*10+(#a_80_1  & 1)*10+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1+(#a_80_6  & 1)*1+(#a_80_7  & 1)*1+(#a_81_8  & 1)*1+(#a_80_9  & 1)*1) >=27
 
}
rule Trojan_Win32_Qakbot_GG_MTB_8{
	meta:
		description = "Trojan:Win32/Qakbot.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 10 00 00 "
		
	strings :
		$a_80_0 = {66 61 63 65 62 6f 6f 6b 2e 63 6f 6d 2f 6c 6f 67 69 6e } //facebook.com/login  10
		$a_80_1 = {76 65 72 79 20 62 69 67 20 70 6f 73 74 64 61 74 61 20 25 75 20 62 79 74 65 73 } //very big postdata %u bytes  1
		$a_80_2 = {70 69 64 3d 5b } //pid=[  1
		$a_80_3 = {63 6f 6f 6b 69 65 3d 5b } //cookie=[  1
		$a_80_4 = {65 78 65 3d 5b } //exe=[  1
		$a_80_5 = {75 61 3d 5b } //ua=[  1
		$a_80_6 = {25 75 2e 25 75 2e 25 75 2e 25 75 } //%u.%u.%u.%u  1
		$a_81_7 = {50 41 53 53 } //1 PASS
		$a_80_8 = {68 74 74 70 3a 2f 2f } //http://  1
		$a_80_9 = {45 53 43 41 50 45 } //ESCAPE  1
		$a_80_10 = {42 41 43 4b 53 50 } //BACKSP  1
		$a_80_11 = {3c 25 30 32 58 3e } //<%02X>  1
		$a_80_12 = {4d 6f 7a 69 6c 6c 61 5c 46 69 72 65 66 6f 78 } //Mozilla\Firefox  1
		$a_80_13 = {2e 6a 70 65 67 } //.jpeg  1
		$a_80_14 = {75 72 6c 3d 5b } //url=[  1
		$a_80_15 = {47 65 74 4b 65 79 62 6f 61 72 64 53 74 61 74 65 } //GetKeyboardState  1
	condition:
		((#a_80_0  & 1)*10+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1+(#a_80_6  & 1)*1+(#a_81_7  & 1)*1+(#a_80_8  & 1)*1+(#a_80_9  & 1)*1+(#a_80_10  & 1)*1+(#a_80_11  & 1)*1+(#a_80_12  & 1)*1+(#a_80_13  & 1)*1+(#a_80_14  & 1)*1+(#a_80_15  & 1)*1) >=23
 
}