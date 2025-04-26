
rule TrojanSpy_Win32_Banker_KF{
	meta:
		description = "TrojanSpy:Win32/Banker.KF,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 4c 6f 63 61 6c 65 73 } //1 Software\Borland\Delphi\Locales
		$a_01_1 = {49 4e 54 45 52 4e 45 54 42 41 4e 4b 49 4e 47 43 41 49 58 41 4d 4f 5a 49 4c 4c 41 46 49 52 45 46 4f 58 } //1 INTERNETBANKINGCAIXAMOZILLAFIREFOX
		$a_01_2 = {49 4e 54 45 52 4e 45 54 42 41 4e 4b 49 4e 47 43 41 49 58 41 57 49 4e 44 4f 57 53 49 4e 54 45 52 4e 45 54 45 58 50 4c 4f 52 45 52 } //1 INTERNETBANKINGCAIXAWINDOWSINTERNETEXPLORER
		$a_01_3 = {4e 4f 53 53 41 43 41 49 58 41 4e 45 54 42 41 4e 4b 49 4e 47 4d 49 43 52 4f 53 4f 46 54 49 4e 54 45 52 4e 45 54 45 58 50 4c 4f 52 45 52 } //1 NOSSACAIXANETBANKINGMICROSOFTINTERNETEXPLORER
		$a_01_4 = {4e 4f 53 53 41 43 41 49 58 41 4e 45 54 42 41 4e 4b 49 4e 47 57 49 4e 44 4f 57 53 49 4e 54 45 52 4e 45 54 45 58 50 4c 4f 52 45 52 } //1 NOSSACAIXANETBANKINGWINDOWSINTERNETEXPLORER
		$a_01_5 = {4e 4f 53 53 41 43 41 49 58 41 4e 45 54 42 41 4e 4b 49 4e 47 4d 4f 5a 49 4c 4c 41 46 49 52 45 46 4f 58 } //1 NOSSACAIXANETBANKINGMOZILLAFIREFOX
		$a_01_6 = {47 65 74 43 6c 69 70 62 6f 61 72 64 44 61 74 61 } //1 GetClipboardData
		$a_01_7 = {53 65 74 43 6c 69 70 62 6f 61 72 64 44 61 74 61 } //1 SetClipboardData
		$a_01_8 = {47 65 74 57 69 6e 64 6f 77 73 44 69 72 65 63 74 6f 72 79 41 } //1 GetWindowsDirectoryA
		$a_01_9 = {55 6e 68 6f 6f 6b 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 } //1 UnhookWindowsHookEx
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}