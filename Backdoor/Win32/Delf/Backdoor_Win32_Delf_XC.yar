
rule Backdoor_Win32_Delf_XC{
	meta:
		description = "Backdoor:Win32/Delf.XC,SIGNATURE_TYPE_PEHSTR,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
		$a_01_1 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 65 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 } //1 Software\Microsoft\Windows\CurrentVersion\explorer\Browser Helper Objects
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 54 6f 6f 6c 62 61 72 } //1 SOFTWARE\Microsoft\Internet Explorer\Toolbar
		$a_01_4 = {62 6c 6f 63 6b 2e 69 6e 74 72 69 63 68 2e 63 6f 6d } //1 block.intrich.com
		$a_01_5 = {68 61 68 61 68 68 6f 68 6f 68 65 68 65 68 65 68 65 } //1 hahahhohohehehehe
		$a_01_6 = {43 72 65 61 74 65 4d 75 74 65 78 41 } //1 CreateMutexA
		$a_01_7 = {52 65 67 44 65 6c 65 74 65 4b 65 79 41 } //1 RegDeleteKeyA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}