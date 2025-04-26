
rule PWS_Win32_Ldpinch_IE{
	meta:
		description = "PWS:Win32/Ldpinch.IE,SIGNATURE_TYPE_PEHSTR,ffffff8e 00 ffffff8e 00 0c 00 00 "
		
	strings :
		$a_01_0 = {0d 0a 56 69 63 74 69 6d 20 69 73 20 4f 6e 6c 69 6e 65 2e 0d 0a } //100
		$a_01_1 = {70 72 6f 6a 65 63 74 31 2e 65 78 65 } //10 project1.exe
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //10 SOFTWARE\Borland\Delphi\RTL
		$a_01_3 = {4d 69 63 72 6f 73 6f 66 74 20 43 6f 72 70 6f 72 61 74 69 6f 6e } //10 Microsoft Corporation
		$a_01_4 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e } //10 SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
		$a_01_5 = {31 39 32 2e 31 36 38 2e 30 2e } //1 192.168.0.
		$a_01_6 = {31 35 31 2e 31 36 34 2e 31 2e 38 } //1 151.164.1.8
		$a_01_7 = {32 31 32 2e 31 30 31 2e 39 37 2e 37 } //1 212.101.97.7
		$a_01_8 = {31 35 31 2e 31 36 34 2e 32 33 2e 32 30 31 } //1 151.164.23.201
		$a_01_9 = {65 67 65 2e 65 64 75 2e 74 72 } //1 ege.edu.tr
		$a_01_10 = {77 77 77 2e 62 69 67 67 6c 6f 6f 6b 2e 63 6f 6d } //1 www.bigglook.com
		$a_01_11 = {73 79 73 74 65 6d 64 6e 61 40 59 61 68 6f 6f 2e 63 6f 6d } //1 systemdna@Yahoo.com
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1) >=142
 
}