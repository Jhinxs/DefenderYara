
rule Trojan_Win32_PSWStealer_PAAA_MTB{
	meta:
		description = "Trojan:Win32/PSWStealer.PAAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_01_0 = {77 5f 4d 6f 75 73 65 50 72 65 73 73 45 76 65 6e 74 } //1 w_MousePressEvent
		$a_01_1 = {77 5f 4d 6f 75 73 65 4d 6f 76 65 45 76 65 6e 74 } //1 w_MouseMoveEvent
		$a_01_2 = {77 5f 4b 65 79 50 72 65 73 73 45 76 65 6e 74 } //1 w_KeyPressEvent
		$a_01_3 = {77 5f 53 65 74 44 69 73 61 62 6c 65 4b 65 79 62 6f 61 72 64 } //1 w_SetDisableKeyboard
		$a_01_4 = {77 5f 53 65 74 44 69 73 61 62 6c 65 4d 6f 75 73 65 } //1 w_SetDisableMouse
		$a_01_5 = {77 5f 53 65 74 44 69 73 61 62 6c 65 4d 6f 6e 69 74 6f 72 } //1 w_SetDisableMonitor
		$a_01_6 = {75 73 65 72 20 55 73 65 72 44 65 66 65 6e 64 65 72 20 2f 64 65 6c 65 74 65 } //1 user UserDefender /delete
		$a_01_7 = {61 64 64 20 22 48 4b 4c 4d 5c 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e 5c 53 70 65 63 69 61 6c 41 63 63 6f 75 6e 74 73 5c 55 73 65 72 4c 69 73 74 22 20 2f 76 20 55 73 65 72 44 65 66 65 6e 64 65 72 20 2f 74 20 52 45 47 5f 44 57 4f 52 44 20 2f 64 20 30 20 2f 72 65 67 3a 36 34 20 2f 66 } //1 add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /v UserDefender /t REG_DWORD /d 0 /reg:64 /f
		$a_01_8 = {5c 43 6f 69 6e 6f 6d 69 5c 43 6f 69 6e 6f 6d 69 5c 77 61 6c 6c 65 74 73 } //1 \Coinomi\Coinomi\wallets
		$a_01_9 = {48 41 52 44 57 41 52 45 5c 44 45 53 43 52 49 50 54 49 4f 4e 5c 53 79 73 74 65 6d 5c 43 65 6e 74 72 61 6c 50 72 6f 63 65 73 73 6f 72 5c 30 } //1 HARDWARE\DESCRIPTION\System\CentralProcessor\0
		$a_01_10 = {53 45 4c 45 43 54 20 72 6f 77 69 64 20 2c 20 6e 61 6d 65 5f 6f 6e 5f 63 61 72 64 20 2c 20 65 78 70 69 72 61 74 69 6f 6e 5f 6d 6f 6e 74 68 20 2c 20 65 78 70 69 72 61 74 69 6f 6e 5f 79 65 61 72 20 2c 20 63 61 72 64 5f 6e 75 6d 62 65 72 5f 65 6e 63 72 79 70 74 65 64 20 46 52 4f 4d 20 63 72 65 64 69 74 5f 63 61 72 64 73 } //1 SELECT rowid , name_on_card , expiration_month , expiration_year , card_number_encrypted FROM credit_cards
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=11
 
}