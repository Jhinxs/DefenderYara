
rule Trojan_BAT_KeyLogger_ARAQ_MTB{
	meta:
		description = "Trojan:BAT/KeyLogger.ARAQ!MTB,SIGNATURE_TYPE_PEHSTR,06 00 06 00 03 00 00 "
		
	strings :
		$a_01_0 = {5c 00 54 00 65 00 6d 00 70 00 5c 00 4c 00 6f 00 67 00 73 00 5c 00 } //2 \Temp\Logs\
		$a_01_1 = {43 00 61 00 70 00 74 00 75 00 72 00 65 00 64 00 20 00 4b 00 65 00 79 00 73 00 74 00 72 00 6f 00 6b 00 65 00 73 00 } //2 Captured Keystrokes
		$a_01_2 = {54 00 68 00 65 00 73 00 65 00 20 00 61 00 72 00 65 00 20 00 79 00 6f 00 75 00 72 00 20 00 6b 00 65 00 79 00 6c 00 6f 00 67 00 73 00 20 00 66 00 69 00 6c 00 65 00 73 00 } //2 These are your keylogs files
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2) >=6
 
}
rule Trojan_BAT_KeyLogger_ARAQ_MTB_2{
	meta:
		description = "Trojan:BAT/KeyLogger.ARAQ!MTB,SIGNATURE_TYPE_PEHSTR,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {6b 00 65 00 79 00 73 00 74 00 72 00 6f 00 6b 00 65 00 73 00 2e 00 74 00 78 00 74 00 } //2 keystrokes.txt
		$a_01_1 = {5b 00 45 00 53 00 43 00 5d 00 } //1 [ESC]
		$a_01_2 = {5b 00 43 00 54 00 52 00 4c 00 5d 00 } //1 [CTRL]
		$a_01_3 = {5b 00 42 00 61 00 63 00 6b 00 5d 00 } //1 [Back]
		$a_01_4 = {5b 00 57 00 49 00 4e 00 5d 00 } //1 [WIN]
		$a_01_5 = {5b 00 54 00 61 00 62 00 5d 00 } //1 [Tab]
		$a_01_6 = {5b 00 44 00 45 00 4c 00 5d 00 } //1 [DEL]
		$a_01_7 = {4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 } //2 Keylogger
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*2) >=8
 
}