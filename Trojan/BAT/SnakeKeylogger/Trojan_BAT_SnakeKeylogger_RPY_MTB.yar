
rule Trojan_BAT_SnakeKeylogger_RPY_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.RPY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {03 8e 69 0a 03 04 17 58 06 5d 91 2a } //1
		$a_01_1 = {03 04 61 05 59 20 00 01 00 00 58 2a } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Trojan_BAT_SnakeKeylogger_RPY_MTB_2{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.RPY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {16 13 04 2b 1e 07 09 11 04 6f 67 00 00 0a 13 06 08 12 06 28 68 00 00 0a 6f 69 00 00 0a 11 04 17 58 13 04 11 04 07 6f 6a 00 00 0a 32 d8 09 17 58 0d 09 07 6f 6b 00 00 0a 32 c6 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_SnakeKeylogger_RPY_MTB_3{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.RPY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {00 11 09 09 5d 13 0a 11 09 11 04 5d 13 0b 07 11 0a 91 13 0c 08 11 0b } //1
		$a_01_1 = {13 0f 07 11 0a 11 0f 20 00 01 00 00 5d d2 9c 00 11 09 17 59 13 09 11 09 16 fe 04 16 fe 01 13 10 11 10 2d a9 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Trojan_BAT_SnakeKeylogger_RPY_MTB_4{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.RPY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {13 14 11 14 11 13 1f 16 5d 91 13 15 07 11 13 91 11 15 61 13 16 11 13 17 58 08 5d 13 17 07 11 17 91 13 18 11 16 11 18 59 13 19 20 ff 00 00 00 13 1a 11 19 20 00 01 00 00 58 11 1a 5f 13 1b 07 11 13 11 1b d2 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_SnakeKeylogger_RPY_MTB_5{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.RPY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {07 11 05 91 11 07 61 13 08 11 05 17 58 08 5d 13 09 1f 3f 13 11 38 0d fa ff ff 07 11 09 91 13 0a 11 08 11 0a 59 13 0b 20 ff 00 00 00 13 0c 20 ab 00 00 00 13 11 38 ed f9 ff ff 11 0b 20 00 01 00 00 58 11 0c 5f 13 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_SnakeKeylogger_RPY_MTB_6{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.RPY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {00 08 09 6e 08 8e 69 6a 5d d4 91 13 0b 11 04 11 0b 58 11 06 09 95 58 20 ff 00 00 00 5f 13 04 11 06 09 95 13 05 11 06 09 11 06 11 04 95 9e 11 06 11 04 11 05 9e 00 09 17 58 0d 09 20 ff 00 00 00 fe 03 16 fe 01 13 0c 11 0c 2d b5 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_SnakeKeylogger_RPY_MTB_7{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.RPY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0f 00 00 "
		
	strings :
		$a_01_0 = {4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 73 00 74 00 61 00 72 00 74 00 65 00 64 00 } //1 Keylogger started
		$a_01_1 = {6b 00 65 00 79 00 73 00 74 00 72 00 6f 00 6b 00 65 00 73 00 2e 00 74 00 78 00 74 00 } //1 keystrokes.txt
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_3 = {48 00 61 00 63 00 6b 00 65 00 64 00 } //1 Hacked
		$a_01_4 = {76 00 6f 00 69 00 63 00 65 00 53 00 74 00 61 00 72 00 74 00 } //1 voiceStart
		$a_01_5 = {73 00 63 00 72 00 65 00 65 00 6e 00 73 00 68 00 6f 00 74 00 } //1 screenshot
		$a_01_6 = {49 73 4b 65 79 4c 6f 63 6b 65 64 } //1 IsKeyLocked
		$a_01_7 = {53 74 61 72 74 56 6f 69 63 65 } //1 StartVoice
		$a_01_8 = {72 65 63 6f 72 64 } //1 record
		$a_01_9 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //1 DownloadFile
		$a_01_10 = {52 61 74 2d 42 6f 74 2e 65 78 65 } //1 Rat-Bot.exe
		$a_01_11 = {47 65 74 54 65 6d 70 50 61 74 68 } //1 GetTempPath
		$a_01_12 = {43 61 70 74 75 72 65 53 63 72 65 65 6e } //1 CaptureScreen
		$a_01_13 = {49 73 4b 65 79 44 6f 77 6e } //1 IsKeyDown
		$a_01_14 = {53 6c 65 65 70 } //1 Sleep
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1) >=15
 
}