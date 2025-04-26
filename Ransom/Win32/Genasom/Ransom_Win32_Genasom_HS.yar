
rule Ransom_Win32_Genasom_HS{
	meta:
		description = "Ransom:Win32/Genasom.HS,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 10 00 00 "
		
	strings :
		$a_01_0 = {62 61 74 2e 62 61 74 00 } //1
		$a_01_1 = {6b 65 79 2e 72 65 67 00 } //1
		$a_01_2 = {41 64 6f 62 65 52 65 61 64 65 72 2e 65 78 65 00 } //1
		$a_01_3 = {5b 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 53 79 73 74 65 6d 5d } //1 [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System]
		$a_01_4 = {5b 48 4b 45 59 5f 4c 4f 43 41 4c 5f 4d 41 43 48 49 4e 45 5c 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e 5d } //1 [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon]
		$a_01_5 = {5b 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 45 78 70 6c 6f 72 65 72 5d } //1 [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]
		$a_01_6 = {22 44 69 73 61 62 6c 65 4c 6f 63 61 6c 4d 61 63 68 69 6e 65 52 75 6e 22 3d 64 77 6f 72 64 3a 30 30 30 30 30 30 30 31 } //1 "DisableLocalMachineRun"=dword:00000001
		$a_01_7 = {22 4e 6f 46 69 6c 65 4d 65 6e 75 22 3d 64 77 6f 72 64 3a 30 30 30 30 30 30 30 31 } //1 "NoFileMenu"=dword:00000001
		$a_01_8 = {22 4e 6f 43 6f 6e 74 72 6f 6c 50 61 6e 65 6c 22 3d 64 77 6f 72 64 3a 30 30 30 30 30 30 30 31 } //1 "NoControlPanel"=dword:00000001
		$a_01_9 = {22 4e 6f 44 72 69 76 65 73 22 3d 64 77 6f 72 64 3a 33 66 66 66 66 66 66 } //1 "NoDrives"=dword:3ffffff
		$a_01_10 = {22 4e 6f 43 6c 6f 73 65 22 3d 64 77 6f 72 64 3a 30 30 30 30 30 30 30 31 } //1 "NoClose"=dword:00000001
		$a_01_11 = {22 4e 6f 43 68 61 6e 67 65 53 74 61 72 74 4d 65 6e 75 22 3d 64 77 6f 72 64 3a 30 30 30 30 30 30 30 31 } //1 "NoChangeStartMenu"=dword:00000001
		$a_01_12 = {22 4e 6f 56 69 65 77 43 6f 6e 74 65 78 74 4d 65 6e 75 22 3d 64 77 6f 72 64 3a 30 30 30 30 30 30 30 31 } //1 "NoViewContextMenu"=dword:00000001
		$a_01_13 = {22 4e 6f 52 75 6e 22 3d 64 77 6f 72 64 3a 30 30 30 30 30 30 30 31 } //1 "NoRun"=dword:00000001
		$a_01_14 = {22 4e 6f 46 69 6e 64 22 3d 64 77 6f 72 64 3a 30 30 30 30 30 30 30 31 } //1 "NoFind"=dword:00000001
		$a_01_15 = {22 4e 6f 44 65 73 6b 74 6f 70 22 3d 64 77 6f 72 64 3a 30 30 30 30 30 30 30 31 } //1 "NoDesktop"=dword:00000001
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1) >=16
 
}