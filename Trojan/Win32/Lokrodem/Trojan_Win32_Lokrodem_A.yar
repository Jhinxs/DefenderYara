
rule Trojan_Win32_Lokrodem_A{
	meta:
		description = "Trojan:Win32/Lokrodem.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 "
		
	strings :
		$a_01_0 = {2a 2e 65 78 65 3b 2a 2e 64 6c 6c 3b 2a 2e 73 79 73 } //1 *.exe;*.dll;*.sys
		$a_01_1 = {52 61 6e 64 6f 6d 69 7a 69 6e 67 20 73 69 7a 65 3a 20 41 70 70 65 6e 64 65 64 } //1 Randomizing size: Appended
		$a_01_2 = {66 65 72 72 6f 2e 74 6d 70 } //1 ferro.tmp
		$a_01_3 = {63 3a 5c 61 75 74 6f 65 78 65 63 2e 62 61 74 } //1 c:\autoexec.bat
		$a_01_4 = {4b 69 6c 6c 52 75 6e 65 64 43 6f 70 69 65 73 20 2d } //1 KillRunedCopies -
		$a_01_5 = {57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 Windows\CurrentVersion\Run
		$a_01_6 = {66 69 6c 65 20 68 69 64 64 65 6e } //1 file hidden
		$a_01_7 = {50 72 6f 63 65 73 73 69 6e 67 20 72 65 64 69 72 65 63 74 20 73 74 6f 70 70 65 64 } //1 Processing redirect stopped
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=7
 
}
rule Trojan_Win32_Lokrodem_A_2{
	meta:
		description = "Trojan:Win32/Lokrodem.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {3c 73 63 72 69 70 74 20 6c 61 6e 67 75 61 67 65 3d 22 4a 61 76 61 53 63 72 69 70 74 } //1 <script language="JavaScript
		$a_01_1 = {45 78 63 65 70 74 69 6f 6e 20 77 72 69 74 65 72 65 64 69 72 65 63 74 } //1 Exception writeredirect
		$a_01_2 = {61 62 6f 75 74 3a 62 6c 61 6e 6b } //1 about:blank
		$a_01_3 = {22 3e 77 69 6e 64 6f 77 2e 6c 6f 63 61 74 69 6f 6e 3d 22 } //1 ">window.location="
		$a_01_4 = {53 65 74 53 69 74 65 20 2d 20 62 65 67 69 6e } //1 SetSite - begin
		$a_01_5 = {44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 } //1 DllCanUnloadNow
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}