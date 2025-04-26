
rule TrojanSpy_BAT_Keylogger_AV{
	meta:
		description = "TrojanSpy:BAT/Keylogger.AV,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {55 00 6c 00 74 00 69 00 6d 00 61 00 74 00 65 00 20 00 4c 00 6f 00 67 00 67 00 65 00 72 00 } //1 Ultimate Logger
		$a_01_1 = {66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 73 00 65 00 74 00 20 00 6f 00 70 00 6d 00 6f 00 64 00 65 00 20 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 } //1 firewall set opmode disable
		$a_01_2 = {74 6d 72 53 65 6e 64 4c 6f 67 5f 54 69 63 6b } //1 tmrSendLog_Tick
		$a_01_3 = {53 65 6e 64 4d 61 69 6c 43 6f 6e 66 69 72 6d 61 74 69 6f 6e } //1 SendMailConfirmation
		$a_01_4 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}