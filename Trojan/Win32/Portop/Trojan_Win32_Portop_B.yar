
rule Trojan_Win32_Portop_B{
	meta:
		description = "Trojan:Win32/Portop.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_01_0 = {47 6c 6f 62 61 6c 5c 44 30 45 38 35 38 44 46 2d 39 38 35 45 2d 34 39 30 37 2d 42 37 46 42 2d 38 44 37 33 32 43 33 46 43 33 42 38 7d } //2 Global\D0E858DF-985E-4907-B7FB-8D732C3FC3B8}
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //2 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_2 = {63 6d 64 20 2f 63 20 73 74 61 72 74 20 2f 62 20 20 2f 72 75 20 73 79 73 74 65 6d 20 2f 73 63 20 40 65 63 68 6f 20 6f 66 66 } //2 cmd /c start /b  /ru system /sc @echo off
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2) >=6
 
}