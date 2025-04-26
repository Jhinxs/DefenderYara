
rule Backdoor_Win32_Pahador_gen_ABG{
	meta:
		description = "Backdoor:Win32/Pahador.gen!ABG,SIGNATURE_TYPE_PEHSTR_EXT,28 00 27 00 13 00 00 "
		
	strings :
		$a_01_0 = {78 78 78 2e 6a 70 67 } //10 xxx.jpg
		$a_00_1 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //10 SOFTWARE\Borland\Delphi\RTL
		$a_00_2 = {5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e } //10 \Software\Microsoft\Windows NT\CurrentVersion\Winlogon
		$a_01_3 = {23 64 65 6c 20 5b 73 63 69 65 7a 6b 61 20 64 6f 20 70 6c 69 6b 75 5d 20 2d 20 55 73 75 77 61 20 70 6c 69 6b } //1 #del [sciezka do pliku] - Usuwa plik
		$a_01_4 = {23 64 65 6c 64 69 72 20 5b 73 63 69 65 7a 6b 61 20 64 6f 20 66 6f 6c 64 65 72 75 5d 20 2d 20 55 73 75 77 61 20 6b 61 74 61 6c 6f 67 2c 20 77 72 61 7a 20 7a 20 77 73 7a 79 73 74 6b 69 6d 69 20 70 6c 69 6b 61 6d 69 20 69 20 70 6f 64 66 6f 6c 64 65 72 61 6d 69 2e } //1 #deldir [sciezka do folderu] - Usuwa katalog, wraz z wszystkimi plikami i podfolderami.
		$a_01_5 = {23 64 69 72 65 63 74 6f 72 79 20 63 3a 5c 70 72 6f 67 72 61 6d 20 66 69 6c 65 73 5c 20 2d 20 50 6f 6b 61 7a 75 6a 65 20 7a 61 77 61 72 74 6f } //1 #directory c:\program files\ - Pokazuje zawarto
		$a_01_6 = {23 6b 69 6c 6c 20 2d 20 5a 61 62 69 6a 61 20 70 72 6f 63 65 73 20 6b 65 79 6c 6f 67 67 65 72 61 2e } //1 #kill - Zabija proces keyloggera.
		$a_01_7 = {23 70 75 74 20 5b 6d 61 69 6c 2c 66 74 70 5d 20 63 3a 5c 70 6c 69 6b 2e 74 78 74 20 2d 20 57 79 73 79 6c 61 20 70 6c 69 6b 20 6e 61 20 66 74 70 20 6c 75 62 20 6d 61 69 6c 2e } //1 #put [mail,ftp] c:\plik.txt - Wysyla plik na ftp lub mail.
		$a_01_8 = {56 69 73 75 61 6c 53 68 6f 63 6b 20 4b 65 79 6c 6f 67 67 65 72 20 33 } //1 VisualShock Keylogger 3
		$a_01_9 = {4c 6f 67 20 7a 20 56 69 73 75 61 6c 53 68 6f 63 6b 20 4b 65 79 6c 6f 67 67 65 72 20 33 } //1 Log z VisualShock Keylogger 3
		$a_01_10 = {56 69 73 75 61 6c 53 68 6f 63 6b 20 4b 65 79 6c 6f 67 67 65 72 20 33 20 70 6f 6d 6f 63 3a } //1 VisualShock Keylogger 3 pomoc:
		$a_01_11 = {61 6e 79 20 70 72 7a 65 7a 20 56 69 73 75 61 6c 53 68 6f 63 6b 20 4b 65 79 6c 6f 67 67 65 72 } //1 any przez VisualShock Keylogger
		$a_01_12 = {4e 61 67 72 61 6e 69 65 20 7a 20 6d 69 6b 72 6f 66 6f 6e 75 20 70 6f 63 68 6f 64 7a 69 20 7a 20 56 69 73 75 61 6c 53 68 6f 63 6b 20 4b 65 79 6c 6f 67 67 65 72 20 33 } //1 Nagranie z mikrofonu pochodzi z VisualShock Keylogger 3
		$a_01_13 = {41 75 74 68 6f 72 69 7a 65 64 41 70 70 6c 69 63 61 74 69 6f 6e 73 } //1 AuthorizedApplications
		$a_01_14 = {44 69 73 61 62 6c 65 54 61 73 6b 4d 67 72 } //1 DisableTaskMgr
		$a_01_15 = {46 69 72 65 77 61 6c 6c 50 6f 6c 69 63 79 } //1 FirewallPolicy
		$a_00_16 = {43 61 6c 6c 4e 65 78 74 48 6f 6f 6b 45 78 } //1 CallNextHookEx
		$a_00_17 = {55 6e 68 6f 6f 6b 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 } //1 UnhookWindowsHookEx
		$a_01_18 = {49 6e 74 65 72 6e 65 74 47 65 74 43 6f 6e 6e 65 63 74 65 64 53 74 61 74 65 } //1 InternetGetConnectedState
	condition:
		((#a_01_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_00_16  & 1)*1+(#a_00_17  & 1)*1+(#a_01_18  & 1)*1) >=39
 
}