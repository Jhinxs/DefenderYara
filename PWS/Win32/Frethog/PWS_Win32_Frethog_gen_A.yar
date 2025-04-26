
rule PWS_Win32_Frethog_gen_A{
	meta:
		description = "PWS:Win32/Frethog.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,ffffffd7 07 ffffffd7 07 0b 00 00 "
		
	strings :
		$a_02_0 = {55 8b ec 83 ec 1c 8d 45 fc 50 6a 28 ff 15 ?? ?? 00 10 50 ff 15 ?? ?? 00 10 85 c0 74 51 8d 45 f4 50 68 ?? ?? 00 10 6a 00 ff 15 ?? ?? 00 10 85 c0 74 33 8b 45 f4 6a 00 89 45 e8 8b 45 f8 89 45 ec 6a 00 8d 45 e4 6a 10 50 6a 00 ff 75 fc c7 45 e4 01 00 00 00 c7 45 f0 02 00 00 00 ff 15 ?? ?? 00 10 85 c0 75 09 ff 75 fc ff 15 ?? ?? 00 10 c9 c3 } //1000
		$a_02_1 = {55 8b ec 51 8d 45 fc 56 50 6a 40 ff 75 14 8b 35 ?? ?? 00 10 ff 75 0c ff 75 08 ff d6 85 c0 74 2c 57 6a 00 ff 75 14 ff 75 10 ff 75 0c ff 75 08 ff 15 ?? ?? 00 10 8b f8 8d 45 fc 50 ff 75 fc ff 75 14 ff 75 0c ff 75 08 ff d6 8b c7 5f 5e c9 c3 } //1000
		$a_02_2 = {59 66 3d 6f 6b 74 ?? 66 3d 61 64 74 ?? 66 3d 75 70 74 ?? 66 3d 6e 6f 74 ?? 66 3d 74 72 74 ?? 66 3d 66 61 [0-06] c6 45 ff 01 } //1000
		$a_00_3 = {41 64 6a 75 73 74 54 6f 6b 65 6e 50 72 69 76 69 6c 65 67 65 73 } //1 AdjustTokenPrivileges
		$a_00_4 = {4c 6f 6f 6b 75 70 50 72 69 76 69 6c 65 67 65 56 61 6c 75 65 41 } //1 LookupPrivilegeValueA
		$a_01_5 = {47 65 74 43 75 72 72 65 6e 74 50 72 6f 63 65 73 73 } //1 GetCurrentProcess
		$a_00_6 = {4f 70 65 6e 50 72 6f 63 65 73 73 54 6f 6b 65 6e } //1 OpenProcessToken
		$a_01_7 = {53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //1 SeDebugPrivilege
		$a_01_8 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 WriteProcessMemory
		$a_01_9 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //1 InternetReadFile
		$a_01_10 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1 InternetOpenUrlA
	condition:
		((#a_02_0  & 1)*1000+(#a_02_1  & 1)*1000+(#a_02_2  & 1)*1000+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_01_5  & 1)*1+(#a_00_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=2007
 
}