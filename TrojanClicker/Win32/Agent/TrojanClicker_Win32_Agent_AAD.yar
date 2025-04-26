
rule TrojanClicker_Win32_Agent_AAD{
	meta:
		description = "TrojanClicker:Win32/Agent.AAD,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_02_0 = {56 68 00 01 00 00 be ?? ?? ?? ?? 6a 00 56 e8 ?? ?? ?? ?? 8b 44 24 14 83 c4 0c 8a 08 84 c9 74 11 8b d6 2b d0 fe c9 88 0c 02 8a 48 01 40 84 c9 75 f3 8b c6 5e c3 } //1
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_2 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //1 CreateToolhelp32Snapshot
		$a_01_3 = {5c 73 79 73 74 65 6d 33 32 5c 63 61 74 63 6c 6f 67 64 2e 64 6c 6c } //1 \system32\catclogd.dll
		$a_01_4 = {72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 25 73 2c 53 74 61 72 74 } //1 rundll32.exe %s,Start
		$a_01_5 = {41 64 6a 75 73 74 54 6f 6b 65 6e 50 72 69 76 69 6c 65 67 65 73 } //1 AdjustTokenPrivileges
		$a_01_6 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 WriteProcessMemory
		$a_01_7 = {46 74 70 47 65 74 46 69 6c 65 41 } //1 FtpGetFileA
		$a_01_8 = {53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //1 SeDebugPrivilege
	condition:
		((#a_02_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}