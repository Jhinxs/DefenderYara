
rule Worm_Win32_Agent_N{
	meta:
		description = "Worm:Win32/Agent.N,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_00_0 = {69 66 20 65 78 69 73 74 20 22 25 73 22 20 67 6f 74 6f 20 31 } //1 if exist "%s" goto 1
		$a_01_1 = {25 73 25 73 2e 62 61 74 } //1 %s%s.bat
		$a_00_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_3 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 41 42 5c 57 41 42 34 5c 57 61 62 20 46 69 6c 65 20 4e 61 6d 65 } //1 Software\Microsoft\WAB\WAB4\Wab File Name
		$a_01_4 = {25 73 2e 25 73 40 25 73 } //1 %s.%s@%s
		$a_01_5 = {25 73 25 73 2e 7a 69 70 } //1 %s%s.zip
		$a_01_6 = {25 73 2e 64 6f 63 2e 65 78 65 } //1 %s.doc.exe
		$a_01_7 = {25 73 2e 74 78 74 2e 65 78 65 } //1 %s.txt.exe
		$a_00_8 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 41 63 63 6f 75 6e 74 20 4d 61 6e 61 67 65 72 5c 41 63 63 6f 75 6e 74 73 } //1 Software\Microsoft\Internet Account Manager\Accounts
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_00_8  & 1)*1) >=9
 
}