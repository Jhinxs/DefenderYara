
rule TrojanDownloader_Win32_Banload_ZCD{
	meta:
		description = "TrojanDownloader:Win32/Banload.ZCD,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {2f 63 20 52 45 47 20 41 44 44 20 22 48 4b 4c 4d 5c 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 53 65 63 75 72 69 74 79 20 43 65 6e 74 65 72 22 20 2f 76 20 22 41 6e 74 69 56 69 72 75 73 44 69 73 61 62 6c 65 4e 6f 74 69 66 79 22 20 2f 74 20 52 45 47 5f 44 57 4f 52 44 20 2f 64 20 30 78 30 30 30 30 30 30 30 31 20 2f 66 } //1 /c REG ADD "HKLM\SOFTWARE\Microsoft\Security Center" /v "AntiVirusDisableNotify" /t REG_DWORD /d 0x00000001 /f
		$a_01_1 = {2f 63 20 52 45 47 20 41 44 44 20 22 48 4b 4c 4d 5c 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 53 65 63 75 72 69 74 79 20 43 65 6e 74 65 72 22 20 2f 76 20 22 46 69 72 65 77 61 6c 6c 44 69 73 61 62 6c 65 4e 6f 74 69 66 79 22 20 2f 74 20 52 45 47 5f 44 57 4f 52 44 20 2f 64 20 30 78 30 30 30 30 30 30 30 31 20 2f 66 } //1 /c REG ADD "HKLM\SOFTWARE\Microsoft\Security Center" /v "FirewallDisableNotify" /t REG_DWORD /d 0x00000001 /f
		$a_03_2 = {5c 6d 61 73 74 65 72 78 2e 65 78 65 [0-10] 68 74 74 70 3a 2f 2f 38 37 2e 32 33 39 2e 32 32 2e 33 39 2f 77 75 78 70 2e 74 73 74 00 00 } //1
		$a_01_3 = {2f 63 20 52 45 47 20 41 44 44 20 22 48 4b 4c 4d 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 22 20 2f 76 20 22 57 69 6e 64 6f 77 73 20 55 70 64 61 74 65 20 53 50 38 22 20 2f 74 20 52 45 47 5f 45 58 50 41 4e 44 5f 53 5a 20 2f 64 20 22 25 73 79 73 74 65 6d 64 69 72 25 5c 57 69 6e 64 6f 77 73 20 55 70 64 61 74 65 53 50 38 2e 65 78 65 22 20 2f 66 } //1 /c REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v "Windows Update SP8" /t REG_EXPAND_SZ /d "%systemdir%\Windows UpdateSP8.exe" /f
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}