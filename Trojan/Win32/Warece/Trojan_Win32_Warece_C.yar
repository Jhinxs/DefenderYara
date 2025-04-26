
rule Trojan_Win32_Warece_C{
	meta:
		description = "Trojan:Win32/Warece.C,SIGNATURE_TYPE_PEHSTR_EXT,29 00 1f 00 09 00 00 "
		
	strings :
		$a_02_0 = {53 50 68 00 46 00 00 68 00 30 40 00 ff 74 24 20 ff ?? ?? ?? ?? 00 6a 01 53 ff } //10
		$a_00_1 = {5c 5c 2e 5c 70 69 70 65 5c 78 6c 69 62 77 61 69 74 } //10 \\.\pipe\xlibwait
		$a_00_2 = {5c 5c 2e 5c 70 69 70 65 5c 6d 76 69 77 61 69 74 } //10 \\.\pipe\mviwait
		$a_00_3 = {5c 5c 2e 5c 70 69 70 65 5c 43 5f 5f 57 49 4e 44 4f 57 53 5f 49 45 58 50 4c 4f 52 45 2e 45 58 45 } //10 \\.\pipe\C__WINDOWS_IEXPLORE.EXE
		$a_00_4 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 43 6f 6e 74 72 6f 6c 5c 53 65 63 75 72 69 74 79 50 72 6f 76 69 64 65 72 73 } //10 SYSTEM\CurrentControlSet\Control\SecurityProviders
		$a_00_5 = {2f 5f 6c 64 2f 3f 67 65 74 3d 66 69 6c 65 26 66 69 6c 65 3d 65 6d 65 72 67 65 6e 63 79 2e 65 78 65 } //10 /_ld/?get=file&file=emergency.exe
		$a_00_6 = {72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 25 31 31 25 5c 78 6c 69 62 67 66 6c 32 35 34 2e 64 6c 6c } //10 rundll32.exe %11%\xlibgfl254.dll
		$a_00_7 = {43 72 65 61 74 65 4e 61 6d 65 64 50 69 70 65 41 } //1 CreateNamedPipeA
		$a_00_8 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
	condition:
		((#a_02_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_00_5  & 1)*10+(#a_00_6  & 1)*10+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1) >=31
 
}