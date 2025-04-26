
rule Trojan_Win32_Singu_B{
	meta:
		description = "Trojan:Win32/Singu.B,SIGNATURE_TYPE_PEHSTR,ffffff9b 00 ffffff9b 00 0f 00 00 "
		
	strings :
		$a_01_0 = {25 73 57 69 6e 33 32 65 6e 2e 62 61 74 } //100 %sWin32en.bat
		$a_01_1 = {52 43 50 54 20 54 4f 3a 25 73 } //10 RCPT TO:%s
		$a_01_2 = {4d 41 49 4c 20 46 52 4f 4d 3a 25 73 } //10 MAIL FROM:%s
		$a_01_3 = {5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 4b 65 72 6e 65 6c 2a 2e 44 4c 4c } //10 \WINDOWS\SYSTEM32\Kernel*.DLL
		$a_01_4 = {43 4c 53 49 44 5c 7b 45 43 38 33 42 39 30 30 2d 42 33 33 41 2d 44 33 31 36 2d 45 46 37 44 2d 30 30 30 36 43 41 33 35 30 37 30 35 7d } //10 CLSID\{EC83B900-B33A-D316-EF7D-0006CA350705}
		$a_01_5 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //10 InternetReadFile
		$a_01_6 = {25 73 5c 73 74 61 74 2e 69 6e 69 } //1 %s\stat.ini
		$a_01_7 = {73 65 6e 64 70 61 73 73 } //1 sendpass
		$a_01_8 = {73 79 73 74 65 6d 2e 64 6c 6c } //1 system.dll
		$a_01_9 = {62 61 63 6b 69 6e 66 6f 2e 69 6e 69 } //1 backinfo.ini
		$a_01_10 = {2e 2e 2f 75 70 64 61 74 65 2e 65 78 65 } //1 ../update.exe
		$a_01_11 = {47 65 74 20 4d 61 69 6c 20 46 6f 72 20 55 73 21 } //1 Get Mail For Us!
		$a_01_12 = {57 65 20 57 69 6c 6c 20 47 65 74 20 4d 61 69 6c 21 } //1 We Will Get Mail!
		$a_01_13 = {25 73 3f 61 63 74 69 6f 6e 3d 67 65 74 63 6d 64 26 68 6f 73 74 69 64 3d 25 73 26 68 6f 73 74 6e 61 6d 65 3d 25 73 } //1 %s?action=getcmd&hostid=%s&hostname=%s
		$a_01_14 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 41 70 70 20 50 61 74 68 73 5c 49 45 58 50 4c 4f 52 45 2e 45 58 45 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\IEXPLORE.EXE
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1) >=155
 
}