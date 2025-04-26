
rule TrojanDownloader_Win32_Agent_ADD{
	meta:
		description = "TrojanDownloader:Win32/Agent.ADD,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0e 00 00 "
		
	strings :
		$a_01_0 = {7b 33 46 36 44 35 34 42 42 2d 33 34 45 45 2d 34 34 36 39 2d 42 30 39 34 2d 38 36 42 30 39 45 35 33 42 43 46 38 7d } //1 {3F6D54BB-34EE-4469-B094-86B09E53BCF8}
		$a_01_1 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 63 6f 6d 6d 2e 78 6d 6c } //1 C:\WINDOWS\SYSTEM32\comm.xml
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 } //1 Software\Microsoft\Windows\CurrentVersion\Explorer
		$a_01_3 = {68 75 6d 61 6e 00 } //1 畨慭n
		$a_01_4 = {63 6f 6d 6d 2e 70 68 70 } //1 comm.php
		$a_01_5 = {6e 65 77 75 73 65 72 2e 70 68 70 } //1 newuser.php
		$a_01_6 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 41 } //1 InternetOpenA
		$a_01_7 = {44 6f 77 6e 2e 64 6c 6c } //1 Down.dll
		$a_01_8 = {73 70 6c 6f 73 6f 2e 63 6f 6d } //1 sploso.com
		$a_01_9 = {68 65 6c 6c 45 78 65 63 75 74 65 41 } //1 hellExecuteA
		$a_01_10 = {72 65 61 74 65 50 72 6f 63 65 73 73 41 } //1 reateProcessA
		$a_01_11 = {75 73 65 72 69 64 3d 25 73 00 } //1 獵牥摩┽s
		$a_01_12 = {5c 66 69 6c 65 2e 65 78 65 } //1 \file.exe
		$a_01_13 = {50 c6 00 43 8b 45 fc 50 ff 15 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1) >=14
 
}