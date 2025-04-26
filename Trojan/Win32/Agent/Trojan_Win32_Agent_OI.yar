
rule Trojan_Win32_Agent_OI{
	meta:
		description = "Trojan:Win32/Agent.OI,SIGNATURE_TYPE_PEHSTR_EXT,42 01 2e 01 08 00 00 "
		
	strings :
		$a_00_0 = {57 69 6e 64 6f 77 73 20 41 74 75 61 6c 69 7a 61 64 6f 20 43 6f 6d 20 53 75 63 65 73 73 6f } //100 Windows Atualizado Com Sucesso
		$a_00_1 = {43 3a 5c 77 69 6e 64 6f 77 73 5c 77 69 6e 64 6f 77 73 75 70 64 61 74 65 37 2e 65 78 65 } //100 C:\windows\windowsupdate7.exe
		$a_00_2 = {68 74 74 70 3a 2f 2f 65 78 70 65 72 69 6d 65 6e 74 61 6c 2e 73 69 74 65 73 6c 65 64 2e 63 6f 6d 2f 77 69 6e 64 2e 6a 70 67 } //100 http://experimental.sitesled.com/wind.jpg
		$a_00_3 = {53 79 73 74 65 6d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 43 6f 6e 74 72 6f 6c 5c 4b 65 79 62 6f 61 72 64 20 4c 61 79 6f 75 74 73 5c 25 2e 38 78 } //10 System\CurrentControlSet\Control\Keyboard Layouts\%.8x
		$a_00_4 = {75 78 74 68 65 6d 65 2e 64 6c 6c } //10 uxtheme.dll
		$a_01_5 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //1 SetWindowsHookExA
		$a_00_6 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //1 ShellExecuteA
		$a_00_7 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
	condition:
		((#a_00_0  & 1)*100+(#a_00_1  & 1)*100+(#a_00_2  & 1)*100+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_01_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=302
 
}