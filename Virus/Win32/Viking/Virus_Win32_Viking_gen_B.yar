
rule Virus_Win32_Viking_gen_B{
	meta:
		description = "Virus:Win32/Viking.gen!B,SIGNATURE_TYPE_PEHSTR,10 00 10 00 09 00 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //10 SOFTWARE\Borland\Delphi\RTL
		$a_01_1 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6d 61 67 65 20 46 69 6c 65 20 45 78 65 63 75 74 69 6f 6e 20 4f 70 74 69 6f 6e 73 5c } //1 SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 5c 41 56 50 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run\AVP
		$a_01_3 = {43 6f 6f 6c 5f 47 61 6d 65 53 65 74 75 70 2e 65 78 65 } //1 Cool_GameSetup.exe
		$a_01_4 = {63 3a 5c 47 4b 2e 54 4d 50 } //1 c:\GK.TMP
		$a_01_5 = {44 65 73 6b 74 6f 70 5f 31 2e 69 6e 69 } //1 Desktop_1.ini
		$a_01_6 = {4d 53 4e 20 47 61 6d 69 6e 20 5a 6f 6e 65 } //1 MSN Gamin Zone
		$a_01_7 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 57 69 6e 52 41 52 5c 77 69 6e 72 61 72 2e 65 78 65 22 20 75 20 2d 61 73 20 2d 65 70 31 20 2d 69 6e 75 6c 20 2d 69 62 63 6b } //1 C:\Program Files\WinRAR\winrar.exe" u -as -ep1 -inul -ibck
		$a_01_8 = {73 61 66 65 62 6f 78 54 72 61 79 2e 65 78 65 } //1 safeboxTray.exe
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=16
 
}