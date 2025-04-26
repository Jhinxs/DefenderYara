
rule PWS_Win32_Lmir_BMS{
	meta:
		description = "PWS:Win32/Lmir.BMS,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {4d 54 4a 76 58 63 4a 65 59 63 7a 6b 58 74 52 70 45 42 52 4d 58 62 3d 5d 51 74 52 6d 59 43 7a 6f 5a 3f 3e 50 56 54 46 73 57 53 4a 62 59 6d } //1 MTJvXcJeYczkXtRpEBRMXb=]QtRmYCzoZ?>PVTFsWSJbYm
		$a_01_1 = {6f 68 64 50 6d 79 50 77 6a 59 4d 5d 52 52 3e 6b 51 3f 40 46 77 48 43 75 70 67 66 4d 49 62 40 47 7c 58 78 5a 6a 47 6c 47 76 49 70 5e 6b 57 64 53 66 78 4c 53 65 57 4c 45 76 78 64 78 6a 49 6b 74 7c 69 78 6e 69 58 6c 53 72 5a 57 76 65 77 6f 71 6f 78 70 43 6f 7b 4b 78 7b 61 46 66 5a 42 4e 6c 59 64 46 62 58 64 4f 72 6f 48 4f 68 6f 6b 4f 7a 67 79 68 59 6a 58 74 50 69 49 7c 69 65 57 49 } //1 ohdPmyPwjYM]RR>kQ?@FwHCupgfMIb@G|XxZjGlGvIp^kWdSfxLSeWLEvxdxjIkt|ixniXlSrZWvewoqoxpCo{Kx{aFfZBNlYdFbXdOroHOhokOzgyhYjXtPiI|ieWI
		$a_01_2 = {52 52 3e 6b 51 42 4a 73 55 6f 76 61 58 43 6d } //1 RR>kQBJsUovaXCm
		$a_01_3 = {43 68 61 6e 67 65 53 65 72 76 69 63 65 43 6f 6e 66 69 67 32 57 } //1 ChangeServiceConfig2W
		$a_01_4 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 WriteProcessMemory
		$a_01_5 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //1 CreateRemoteThread
		$a_00_6 = {c6 45 e6 fc c6 45 e8 f0 c6 45 ea c0 33 c0 89 45 f0 33 db bf 02 00 00 00 33 c0 89 45 ec 33 f6 8b 45 fc } //1
		$a_00_7 = {8a 45 e3 24 3f 25 ff 00 00 00 89 45 dc b9 06 00 00 00 2b cf d3 6d dc 33 c0 8a c3 0b 45 dc 84 c0 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=8
 
}