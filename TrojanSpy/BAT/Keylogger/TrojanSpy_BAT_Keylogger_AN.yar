
rule TrojanSpy_BAT_Keylogger_AN{
	meta:
		description = "TrojanSpy:BAT/Keylogger.AN,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 "
		
	strings :
		$a_01_0 = {4b 65 79 4c 6f 67 67 65 72 } //1 KeyLogger
		$a_01_1 = {53 61 76 65 4c 6f 67 66 69 6c 65 } //1 SaveLogfile
		$a_01_2 = {5f 69 73 45 6d 61 69 6c 65 72 4f 6e } //1 _isEmailerOn
		$a_01_3 = {54 69 6d 65 72 45 6d 61 69 6c 65 72 54 69 63 6b } //1 TimerEmailerTick
		$a_01_4 = {5c 00 41 00 63 00 69 00 74 00 69 00 76 00 69 00 74 00 79 00 6c 00 6f 00 67 00 2e 00 78 00 6d 00 6c 00 } //1 \Acitivitylog.xml
		$a_01_5 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_6 = {43 00 53 00 20 00 4b 00 65 00 79 00 20 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 4c 00 6f 00 67 00 20 00 44 00 61 00 74 00 61 00 } //1 CS Key logger Log Data
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=6
 
}