
rule PWS_Win32_OnLineGames_CSK{
	meta:
		description = "PWS:Win32/OnLineGames.CSK,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {5b 48 4b 45 59 5f 4c 4f 43 41 4c 5f 4d 41 43 48 49 4e 45 5c 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 53 68 65 6c 6c 45 78 65 63 75 74 65 48 6f 6f 6b 73 5d } //1 [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellExecuteHooks]
		$a_01_1 = {57 69 6e 64 6f 77 73 20 52 65 67 69 73 74 72 79 20 45 64 69 74 6f 72 20 56 65 72 73 69 6f 6e 20 35 2e 30 30 } //1 Windows Registry Editor Version 5.00
		$a_01_2 = {41 64 6a 75 73 74 54 6f 6b 65 6e 50 72 69 76 69 6c 65 67 65 73 } //1 AdjustTokenPrivileges
		$a_01_3 = {53 65 52 65 73 74 6f 72 65 50 72 69 76 69 6c 65 67 65 } //1 SeRestorePrivilege
		$a_01_4 = {53 65 42 61 63 6b 75 70 50 72 69 76 69 6c 65 67 65 } //1 SeBackupPrivilege
		$a_01_5 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //1 ShellExecuteA
		$a_01_6 = {72 65 67 65 64 69 74 20 2f 73 20 } //1 regedit /s 
		$a_01_7 = {5c 77 69 6e 73 79 73 2e 72 65 67 } //1 \winsys.reg
		$a_01_8 = {61 76 70 2e 65 78 65 } //1 avp.exe
		$a_01_9 = {57 69 6e 45 78 65 63 } //1 WinExec
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}