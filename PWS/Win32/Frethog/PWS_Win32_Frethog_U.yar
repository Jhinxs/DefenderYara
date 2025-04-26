
rule PWS_Win32_Frethog_U{
	meta:
		description = "PWS:Win32/Frethog.U,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {76 62 36 63 68 73 2e 64 6c 6c } //1 vb6chs.dll
		$a_00_1 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_2 = {5c 00 66 00 6f 00 6e 00 74 00 73 00 5c 00 45 00 6c 00 65 00 70 00 68 00 61 00 6e 00 74 00 2e 00 65 00 78 00 65 00 } //1 \fonts\Elephant.exe
		$a_00_3 = {63 00 3a 00 5c 00 42 00 4f 00 4f 00 54 00 2e 00 49 00 4e 00 49 00 } //1 c:\BOOT.INI
		$a_00_4 = {63 00 3a 00 5c 00 6e 00 74 00 6c 00 64 00 72 00 } //1 c:\ntldr
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}
rule PWS_Win32_Frethog_U_2{
	meta:
		description = "PWS:Win32/Frethog.U,SIGNATURE_TYPE_PEHSTR_EXT,2b 00 28 00 1b 00 00 "
		
	strings :
		$a_01_0 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //5 InternetOpenUrlA
		$a_01_1 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //5 SetWindowsHookExA
		$a_01_2 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //5 WriteProcessMemory
		$a_01_3 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //5 ReadProcessMemory
		$a_01_4 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //5 CreateToolhelp32Snapshot
		$a_00_5 = {64 65 6c 20 22 } //2 del "
		$a_00_6 = {69 66 20 65 78 69 73 74 20 22 } //2 if exist "
		$a_00_7 = {22 20 67 6f 74 6f 20 4c 6f 6f 70 } //2 " goto Loop
		$a_00_8 = {64 65 6c 20 25 30 } //2 del %0
		$a_00_9 = {53 65 6e 64 47 61 6d 65 44 61 74 61 } //2 SendGameData
		$a_00_10 = {51 51 4c 6f 67 69 6e 2e 65 78 65 } //1 QQLogin.exe
		$a_00_11 = {69 6e 69 5c 47 61 6d 65 53 65 74 55 70 2e 69 6e 69 } //1 ini\GameSetUp.ini
		$a_00_12 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 65 78 70 6c 6f 72 65 72 5c 53 68 65 6c 6c 45 78 65 63 75 74 65 48 6f 6f 6b 73 } //1 Software\Microsoft\Windows\CurrentVersion\explorer\ShellExecuteHooks
		$a_00_13 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 64 6f 77 73 } //1 SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows
		$a_00_14 = {53 4f 46 54 57 41 52 45 5c 50 6f 6c 69 63 69 65 73 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 57 69 6e 64 6f 77 73 55 70 64 61 74 65 5c 41 55 } //1 SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU
		$a_00_15 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 53 68 61 72 65 64 41 63 63 65 73 73 5c 50 61 72 61 6d 65 74 65 72 73 5c 46 69 72 65 77 61 6c 6c 50 6f 6c 69 63 79 5c 53 74 61 6e 64 61 72 64 50 72 6f 66 69 6c 65 } //1 SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile
		$a_00_16 = {72 73 6d 79 61 70 6d 2e 64 6c 6c } //1 rsmyapm.dll
		$a_00_17 = {72 73 6d 79 62 70 6d 2e 64 6c 6c } //1 rsmybpm.dll
		$a_00_18 = {72 73 6d 79 63 70 6d 2e 64 6c 6c } //1 rsmycpm.dll
		$a_00_19 = {72 73 6d 79 61 66 67 2e 64 6c 6c } //1 rsmyafg.dll
		$a_00_20 = {72 73 6d 79 61 6d 70 2e 64 6c 6c } //1 rsmyamp.dll
		$a_00_21 = {70 6c 61 79 2e 65 78 65 } //1 play.exe
		$a_00_22 = {73 6f 75 6c 2e 65 78 65 } //1 soul.exe
		$a_00_23 = {4d 61 69 6e 2e 64 6c 6c } //1 Main.dll
		$a_00_24 = {45 6e 48 6f 6f 6b 57 69 6e 64 6f 77 } //1 EnHookWindow
		$a_00_25 = {53 6b 69 70 46 69 72 65 57 61 6c 6c } //1 SkipFireWall
		$a_00_26 = {55 6e 48 6f 6f 6b 57 69 6e 64 6f 77 } //1 UnHookWindow
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5+(#a_01_4  & 1)*5+(#a_00_5  & 1)*2+(#a_00_6  & 1)*2+(#a_00_7  & 1)*2+(#a_00_8  & 1)*2+(#a_00_9  & 1)*2+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1+(#a_00_17  & 1)*1+(#a_00_18  & 1)*1+(#a_00_19  & 1)*1+(#a_00_20  & 1)*1+(#a_00_21  & 1)*1+(#a_00_22  & 1)*1+(#a_00_23  & 1)*1+(#a_00_24  & 1)*1+(#a_00_25  & 1)*1+(#a_00_26  & 1)*1) >=40
 
}