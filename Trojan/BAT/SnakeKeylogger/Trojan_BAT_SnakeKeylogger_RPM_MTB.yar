
rule Trojan_BAT_SnakeKeylogger_RPM_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.RPM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {45 00 47 00 45 00 35 00 59 00 45 00 41 00 49 00 58 00 35 00 48 00 43 00 46 00 35 00 34 00 47 00 5a 00 38 00 48 00 34 00 38 00 34 00 } //1 EGE5YEAIX5HCF54GZ8H484
		$a_01_1 = {62 00 65 00 61 00 6d 00 55 00 49 00 } //1 beamUI
		$a_01_2 = {6d 00 61 00 69 00 6e 00 50 00 6f 00 72 00 6a 00 65 00 63 00 74 00 } //1 mainPorject
		$a_01_3 = {00 00 09 4c 00 6f 00 61 00 64 00 00 } //1
		$a_01_4 = {44 69 73 70 6f 73 65 57 69 6e 50 61 6e 65 6c } //1 DisposeWinPanel
		$a_01_5 = {44 72 61 77 57 69 6e 50 61 6e 65 6c } //1 DrawWinPanel
		$a_01_6 = {57 69 6e 50 61 6e 65 6c 43 72 65 61 74 65 } //1 WinPanelCreate
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}
rule Trojan_BAT_SnakeKeylogger_RPM_MTB_2{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.RPM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {74 00 75 00 61 00 6e 00 64 00 6f 00 71 00 75 00 6f 00 63 00 37 00 37 00 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //1 tuandoquoc77@gmail.com
		$a_01_1 = {64 00 6f 00 74 00 75 00 61 00 6e 00 2e 00 70 00 6c 00 75 00 73 00 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //1 dotuan.plus@gmail.com
		$a_01_2 = {4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 } //1 Keylogger
		$a_01_3 = {43 68 65 63 6b 48 6f 74 4b 65 79 } //1 CheckHotKey
		$a_01_4 = {43 61 6c 6c 4e 65 78 74 48 6f 6f 6b 45 78 } //1 CallNextHookEx
		$a_01_5 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 } //1 SetWindowsHookEx
		$a_01_6 = {48 6f 6f 6b 4b 65 79 62 6f 61 72 64 } //1 HookKeyboard
		$a_01_7 = {73 65 74 5f 49 73 42 61 63 6b 67 72 6f 75 6e 64 } //1 set_IsBackground
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}