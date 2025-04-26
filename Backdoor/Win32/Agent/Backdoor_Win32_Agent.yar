
rule Backdoor_Win32_Agent{
	meta:
		description = "Backdoor:Win32/Agent,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {5b 53 68 65 6c 6c 30 5d } //1 [Shell0]
		$a_01_1 = {5b 53 68 65 6c 6c 32 5d 31 31 31 31 31 21 21 21 } //1 [Shell2]11111!!!
		$a_01_2 = {69 45 77 34 38 45 77 33 38 45 77 } //1 iEw48Ew38Ew
		$a_01_3 = {5b 53 68 65 6c 6c 32 5d 32 32 32 32 32 21 21 21 } //1 [Shell2]22222!!!
		$a_01_4 = {5b 53 68 65 6c 6c 30 5d 33 33 33 33 33 21 21 21 } //1 [Shell0]33333!!!
		$a_01_5 = {5b 53 68 65 6c 6c 32 5d 33 33 33 33 33 21 21 21 } //1 [Shell2]33333!!!
		$a_00_6 = {42 00 46 00 33 00 38 00 30 00 } //1 BF380
		$a_01_7 = {5b 53 68 65 6c 6c 30 5d 50 45 } //1 [Shell0]PE
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_00_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}
rule Backdoor_Win32_Agent_2{
	meta:
		description = "Backdoor:Win32/Agent,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1e 00 06 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 76 6f 74 6e 65 77 73 2e 63 6f 6d 2f 65 63 6f 64 65 2f 65 78 69 74 2e 70 68 70 } //5 http://votnews.com/ecode/exit.php
		$a_01_1 = {68 74 74 70 3a 2f 2f 76 6f 74 6e 65 77 73 2e 63 6f 6d 2f 6c 69 73 74 6e 65 77 33 2e 74 78 74 } //5 http://votnews.com/listnew3.txt
		$a_01_2 = {41 20 73 65 63 75 72 69 74 79 20 65 72 72 6f 72 20 6f 66 20 75 6e 6b 6e 6f 77 6e 20 63 61 75 73 65 20 68 61 73 20 62 65 65 6e 20 64 65 74 65 63 74 65 64 20 77 68 69 63 68 20 68 61 73 } //5 A security error of unknown cause has been detected which has
		$a_01_3 = {6b 61 76 73 76 63 } //5 kavsvc
		$a_01_4 = {53 79 6d 61 6e 74 65 63 20 43 6f 72 65 20 4c 43 } //5 Symantec Core LC
		$a_01_5 = {75 70 64 61 74 65 5f 55 70 64 61 74 65 4c 6f 63 61 6c 53 68 61 72 65 64 46 69 6c 65 73 20 73 6f 6d 65 20 65 72 72 6f 72 } //5 update_UpdateLocalSharedFiles some error
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5+(#a_01_4  & 1)*5+(#a_01_5  & 1)*5) >=30
 
}
rule Backdoor_Win32_Agent_3{
	meta:
		description = "Backdoor:Win32/Agent,SIGNATURE_TYPE_PEHSTR,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {63 68 65 63 6b 2e 32 32 33 33 34 34 35 35 36 36 37 37 2e 63 6f 6d } //1 check.223344556677.com
		$a_01_1 = {6f 35 6e 77 79 31 67 69 70 74 64 6d 2d 6c 6f 67 2e 73 64 61 6a 6b 34 36 35 34 36 2e 63 6f 6d } //1 o5nwy1giptdm-log.sdajk46546.com
		$a_01_2 = {77 69 72 65 73 68 61 72 6b 2e 65 78 65 } //1 wireshark.exe
		$a_01_3 = {77 77 77 2e 73 79 73 74 77 65 61 6b 2e 63 6f 6d } //1 www.systweak.com
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_5 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllRegisterServer
		$a_01_6 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1 InternetOpenUrlA
		$a_01_7 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //1 InternetReadFile
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}
rule Backdoor_Win32_Agent_4{
	meta:
		description = "Backdoor:Win32/Agent,SIGNATURE_TYPE_PEHSTR,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {42 6f 74 4d 61 69 6e 44 6c 6c 2e 64 6c 6c } //1 BotMainDll.dll
		$a_01_1 = {66 78 73 73 74 2e 64 6c 6c } //1 fxsst.dll
		$a_01_2 = {53 79 73 74 65 6d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 25 73 5c 53 65 63 75 72 69 74 79 } //1 System\CurrentControlSet\Services\%s\Security
		$a_01_3 = {52 65 67 69 73 74 72 79 5c 4d 61 63 68 69 6e 65 5c 53 79 73 74 65 6d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 25 73 } //1 Registry\Machine\System\CurrentControlSet\Services\%s
		$a_01_4 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //1 CreateToolhelp32Snapshot
		$a_01_5 = {47 65 74 53 79 73 74 65 6d 57 69 6e 64 6f 77 73 44 69 72 65 63 74 6f 72 79 41 } //1 GetSystemWindowsDirectoryA
		$a_01_6 = {46 69 6e 64 4e 65 78 74 46 69 6c 65 41 } //1 FindNextFileA
		$a_01_7 = {4f 70 65 6e 53 43 4d 61 6e 61 67 65 72 41 } //1 OpenSCManagerA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}