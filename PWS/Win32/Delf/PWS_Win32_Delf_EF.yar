
rule PWS_Win32_Delf_EF{
	meta:
		description = "PWS:Win32/Delf.EF,SIGNATURE_TYPE_PEHSTR_EXT,ffffff8a 05 ffffff8a 05 0a 00 00 "
		
	strings :
		$a_00_0 = {50 6f 72 74 69 6f 6e 73 20 43 6f 70 79 72 69 67 68 74 20 28 63 29 20 31 39 39 39 2c 32 30 30 33 20 41 76 65 6e 67 65 72 20 62 79 20 4e 68 54 } //1000 Portions Copyright (c) 1999,2003 Avenger by NhT
		$a_01_1 = {53 48 41 44 55 58 58 } //100 SHADUXX
		$a_00_2 = {4b 56 58 50 5f 4d 6f 6e 69 74 6f 72 } //100 KVXP_Monitor
		$a_01_3 = {51 33 36 30 53 61 66 65 4d 6f 6e 43 6c 61 73 73 } //100 Q360SafeMonClass
		$a_00_4 = {56 45 52 43 4c 53 49 44 2e 45 58 45 } //100 VERCLSID.EXE
		$a_00_5 = {7b 33 34 39 35 44 33 32 38 2d 36 36 31 41 2d 34 46 42 30 2d 42 41 36 37 2d 38 41 43 44 44 31 37 30 34 44 31 45 7d } //10 {3495D328-661A-4FB0-BA67-8ACDD1704D1E}
		$a_00_6 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 53 68 65 6c 6c 45 78 65 63 75 74 65 48 6f 6f 6b 73 } //5 SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellExecuteHooks
		$a_00_7 = {64 65 6c 20 25 30 } //1 del %0
		$a_01_8 = {54 6f 6f 6c 68 65 6c 70 33 32 52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 Toolhelp32ReadProcessMemory
		$a_00_9 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 41 } //1 CreateProcessA
	condition:
		((#a_00_0  & 1)*1000+(#a_01_1  & 1)*100+(#a_00_2  & 1)*100+(#a_01_3  & 1)*100+(#a_00_4  & 1)*100+(#a_00_5  & 1)*10+(#a_00_6  & 1)*5+(#a_00_7  & 1)*1+(#a_01_8  & 1)*1+(#a_00_9  & 1)*1) >=1418
 
}
rule PWS_Win32_Delf_EF_2{
	meta:
		description = "PWS:Win32/Delf.EF,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 0d 00 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
		$a_00_1 = {5a 6c 6f 64 7a 69 65 6a 20 47 47 20 76 31 2e 31 20 5b 4c 4f 47 5d } //1 Zlodziej GG v1.1 [LOG]
		$a_00_2 = {43 3a 5c 54 45 4d 50 5c 6b 69 6c 6c 2e 62 61 74 } //1 C:\TEMP\kill.bat
		$a_00_3 = {69 66 20 65 78 69 73 74 } //1 if exist
		$a_00_4 = {67 6f 74 6f 20 6b 69 6c 6c } //1 goto kill
		$a_00_5 = {6e 61 7a 77 61 5f 6b 6f 6e 74 72 6f 6c 6f 77 61 6e 65 67 6f 5f 70 72 6f 67 72 61 6d 75 } //1 nazwa_kontrolowanego_programu
		$a_00_6 = {63 3a 5c 70 6c 69 6b 2e 65 78 65 } //1 c:\plik.exe
		$a_00_7 = {6d 75 6c 74 69 70 61 72 74 2f 72 65 6c 61 74 65 64 3b 20 74 79 70 65 3d 22 6d 75 6c 74 69 70 61 72 74 2f 61 6c 74 65 72 6e 61 74 69 76 65 22 3b 20 62 6f 75 6e 64 61 72 79 3d 22 3d 5f 4d 6f 72 65 53 74 75 66 5f 32 72 65 6c 7a 7a 7a 73 61 64 76 6e 71 31 32 33 34 77 33 6e 65 72 61 73 64 66 } //1 multipart/related; type="multipart/alternative"; boundary="=_MoreStuf_2relzzzsadvnq1234w3nerasdf
		$a_00_8 = {6d 75 6c 74 69 70 61 72 74 2f 61 6c 74 65 72 6e 61 74 69 76 65 3b 20 62 6f 75 6e 64 61 72 79 3d 22 3d 5f 4d 6f 72 65 53 74 75 66 5f 32 7a 7a 7a 31 32 33 34 73 61 64 76 6e 71 77 33 6e 65 72 61 73 64 66 } //1 multipart/alternative; boundary="=_MoreStuf_2zzz1234sadvnqw3nerasdf
		$a_00_9 = {61 70 70 6c 69 63 61 74 69 6f 6e 2f 6f 63 74 65 74 2d 73 74 72 65 61 6d } //1 application/octet-stream
		$a_02_10 = {8b 8d f4 fd ff ff 8d 85 f8 fd ff ff ba ?? ?? 46 00 e8 ?? ?? f9 ff 8b 95 f8 fd ff ff 8d 85 28 fe ff ff e8 ?? ?? f9 ff e8 ?? ?? f9 ff e8 ?? ?? f9 ff 68 ?? ?? 46 00 8d 95 e4 fd ff ff 33 c0 e8 ?? ?? f9 ff 8b 85 e4 fd ff ff 8d 95 e8 fd ff ff e8 ?? ?? f9 ff ff b5 e8 fd ff ff 68 ?? ?? 46 00 8d 85 ec fd ff ff ba 03 00 00 00 e8 ?? ?? f9 ff 8b 95 ec fd ff ff 8d 85 28 fe ff ff e8 ?? ?? f9 ff e8 ?? ?? f9 ff e8 ?? ?? f9 ff 8d 85 28 fe ff ff e8 ?? ?? f9 ff e8 ?? ?? f9 ff 6a 00 68 ?? ?? 46 00 e8 ?? ?? f9 ff a1 ?? ?? 47 00 e8 ?? ?? fe ff c3 } //1
		$a_02_11 = {33 c9 51 51 51 51 51 51 51 53 8b d8 33 c0 55 68 ?? ?? 46 00 64 ff 30 64 89 20 33 d2 8b 83 24 03 00 00 e8 ?? ?? fb ff 6a ff 68 ?? ?? 46 00 8d 55 fc 33 c0 e8 ?? ?? f9 ff 8b 45 fc e8 ?? ?? f9 ff 50 } //1
		$a_00_12 = {57 69 6e 45 78 65 63 } //1 WinExec
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_02_10  & 1)*1+(#a_02_11  & 1)*1+(#a_00_12  & 1)*1) >=13
 
}
rule PWS_Win32_Delf_EF_3{
	meta:
		description = "PWS:Win32/Delf.EF,SIGNATURE_TYPE_PEHSTR_EXT,46 02 45 02 10 00 00 "
		
	strings :
		$a_00_0 = {50 6f 72 74 69 6f 6e 73 20 43 6f 70 79 72 69 67 68 74 20 28 63 29 20 31 39 39 39 2c 32 30 30 33 20 41 76 65 6e 67 65 72 20 62 79 20 4e 68 54 } //100 Portions Copyright (c) 1999,2003 Avenger by NhT
		$a_01_1 = {4d 53 57 49 4e 44 4f 57 53 58 50 53 50 32 30 30 39 } //100 MSWINDOWSXPSP2009
		$a_00_2 = {59 75 6c 67 61 6e 67 5f 46 69 6c 65 5f 55 70 64 61 74 65 } //100 Yulgang_File_Update
		$a_00_3 = {79 62 5f 6b 65 79 2e 64 6c 6c } //10 yb_key.dll
		$a_01_4 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //10 WriteProcessMemory
		$a_00_5 = {47 65 74 57 69 6e 64 6f 77 73 44 69 72 65 63 74 6f 72 79 41 } //10 GetWindowsDirectoryA
		$a_00_6 = {43 72 65 61 74 65 4d 75 74 65 78 41 } //10 CreateMutexA
		$a_00_7 = {57 53 41 53 74 61 72 74 75 70 } //10 WSAStartup
		$a_00_8 = {67 65 74 68 6f 73 74 62 79 6e 61 6d 65 } //10 gethostbyname
		$a_01_9 = {68 74 6f 6e 73 } //10 htons
		$a_00_10 = {23 33 32 37 37 30 } //10 #32770
		$a_00_11 = {74 78 74 43 61 72 64 } //1 txtCard
		$a_00_12 = {26 74 78 74 55 73 65 72 } //1 &txtUser
		$a_00_13 = {26 73 79 73 3d 57 69 6e 64 6f 77 73 26 70 63 3d } //1 &sys=Windows&pc=
		$a_00_14 = {43 6f 6e 6e 65 63 74 69 6f 6e 3a 20 43 6c 6f 73 65 } //1 Connection: Close
		$a_02_15 = {8d 45 bc ba ?? ?? 40 00 e8 ?? ?? ff ff 8b 55 bc 58 e8 ?? ?? ff ff 84 c0 0f [0-20] 8d 45 b8 e8 ?? ?? ff ff 8b 45 b8 ba ?? ?? 40 00 e8 ?? ?? ff ff 8d 45 b0 50 8d 45 ac ba ?? ?? 40 00 e8 ?? ?? ff ff 8b 45 ac b9 03 00 00 00 66 ba 82 4d e8 ?? ?? ff ff 8b 45 b0 8d 55 b4 } //200
	condition:
		((#a_00_0  & 1)*100+(#a_01_1  & 1)*100+(#a_00_2  & 1)*100+(#a_00_3  & 1)*10+(#a_01_4  & 1)*10+(#a_00_5  & 1)*10+(#a_00_6  & 1)*10+(#a_00_7  & 1)*10+(#a_00_8  & 1)*10+(#a_01_9  & 1)*10+(#a_00_10  & 1)*10+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_02_15  & 1)*200) >=581
 
}