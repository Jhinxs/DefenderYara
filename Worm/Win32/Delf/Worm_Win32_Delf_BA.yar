
rule Worm_Win32_Delf_BA{
	meta:
		description = "Worm:Win32/Delf.BA,SIGNATURE_TYPE_PEHSTR_EXT,6b 00 69 00 11 00 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //10 SOFTWARE\Borland\Delphi\RTL
		$a_00_1 = {4b 69 6c 6c 20 50 72 6f 63 65 73 73 20 3c } //10 Kill Process <
		$a_00_2 = {44 65 6c 65 74 65 20 66 69 6c 65 20 3c } //10 Delete file <
		$a_00_3 = {5b 61 75 74 6f 72 75 6e 5d } //10 [autorun]
		$a_00_4 = {73 68 65 6c 6c 65 78 65 63 75 74 65 20 3d 20 61 6e 74 69 68 6f 73 74 2e 65 78 65 } //10 shellexecute = antihost.exe
		$a_00_5 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //10 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_00_6 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //10 ShellExecuteA
		$a_01_7 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //10 SetWindowsHookExA
		$a_00_8 = {55 6e 68 6f 6f 6b 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 } //10 UnhookWindowsHookEx
		$a_01_9 = {54 6f 6f 6c 68 65 6c 70 33 32 52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //10 Toolhelp32ReadProcessMemory
		$a_00_10 = {61 68 72 2e 65 78 65 } //1 ahr.exe
		$a_00_11 = {61 75 74 6f 72 75 6e 2e 69 6e 66 } //1 autorun.inf
		$a_00_12 = {3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 } //1 :\autorun.inf
		$a_00_13 = {3a 5c 74 65 6d 70 31 2e 65 78 65 } //1 :\temp1.exe
		$a_00_14 = {3a 5c 63 6f 70 79 2e 65 78 65 } //1 :\copy.exe
		$a_00_15 = {3a 5c 68 6f 73 74 2e 65 78 65 } //1 :\host.exe
		$a_00_16 = {3a 5c 61 6e 74 69 68 6f 73 74 2e 65 78 65 } //1 :\antihost.exe
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_00_5  & 1)*10+(#a_00_6  & 1)*10+(#a_01_7  & 1)*10+(#a_00_8  & 1)*10+(#a_01_9  & 1)*10+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1) >=105
 
}