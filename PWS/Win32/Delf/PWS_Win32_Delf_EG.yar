
rule PWS_Win32_Delf_EG{
	meta:
		description = "PWS:Win32/Delf.EG,SIGNATURE_TYPE_PEHSTR,35 00 35 00 0a 00 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 54 45 4d 50 5c 77 69 6e 33 32 2e 64 6c 6c } //10 C:\TEMP\win32.dll
		$a_01_1 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //10 WriteProcessMemory
		$a_01_2 = {68 74 74 70 73 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 } //10 https\shell\open\command
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //10 SOFTWARE\Borland\Delphi\RTL
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6e 74 65 72 6e 65 74 20 53 65 74 74 69 6e 67 73 } //10 Software\Microsoft\Windows\CurrentVersion\Internet Settings
		$a_01_5 = {41 63 74 69 76 65 58 55 72 6c } //1 ActiveXUrl
		$a_01_6 = {41 63 74 69 76 65 58 50 77 } //1 ActiveXPw
		$a_01_7 = {53 74 65 61 6d 20 50 57 20 2d 20 43 72 61 63 6b 65 72 } //1 Steam PW - Cracker
		$a_01_8 = {47 61 6d 65 20 4b 65 79 20 2d 20 53 74 65 61 6c 65 72 } //1 Game Key - Stealer
		$a_01_9 = {55 6e 4c 69 6d 69 74 65 64 20 50 57 20 2d 20 53 74 65 61 6c 65 72 } //1 UnLimited PW - Stealer
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=53
 
}