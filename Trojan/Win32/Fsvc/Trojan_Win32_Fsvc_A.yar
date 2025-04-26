
rule Trojan_Win32_Fsvc_A{
	meta:
		description = "Trojan:Win32/Fsvc.A,SIGNATURE_TYPE_PEHSTR,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
		$a_01_1 = {73 71 6c 32 30 30 35 2e 64 6c 6c } //1 sql2005.dll
		$a_01_2 = {6e 6f 74 65 70 61 64 2e 65 78 65 } //1 notepad.exe
		$a_01_3 = {4b 65 79 20 46 6f 6c 64 65 72 5c 73 76 73 63 68 6f 73 74 73 2e 65 78 65 20 } //1 Key Folder\svschosts.exe 
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_5 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 53 68 61 72 65 64 41 63 63 65 73 73 5c 50 61 72 61 6d 65 74 65 72 73 5c 46 69 72 65 77 61 6c 6c 50 6f 6c 69 63 79 5c 53 74 61 6e 64 61 72 64 50 72 6f 66 69 6c 65 5c 45 6e 61 62 6c 65 46 69 72 65 77 61 6c 6c } //1 SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\EnableFirewall
		$a_01_6 = {43 72 65 61 74 65 44 69 72 65 63 74 6f 72 79 41 } //1 CreateDirectoryA
		$a_01_7 = {47 65 74 43 6c 69 70 62 6f 61 72 64 44 61 74 61 } //1 GetClipboardData
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}