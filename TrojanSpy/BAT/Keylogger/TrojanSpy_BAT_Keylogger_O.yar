
rule TrojanSpy_BAT_Keylogger_O{
	meta:
		description = "TrojanSpy:BAT/Keylogger.O,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0c 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 00 74 00 65 00 61 00 6c 00 74 00 68 00 20 00 4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 20 00 53 00 75 00 63 00 63 00 65 00 73 00 73 00 66 00 75 00 6c 00 6c 00 79 00 20 00 52 00 61 00 6e 00 20 00 4f 00 6e 00 3a 00 } //10 Stealth Keylogger Successfully Ran On:
		$a_01_1 = {53 00 74 00 65 00 61 00 6c 00 74 00 68 00 20 00 4c 00 6f 00 67 00 20 00 46 00 72 00 6f 00 6d 00 3a 00 } //1 Stealth Log From:
		$a_01_2 = {4f 00 46 00 52 00 6e 00 61 00 37 00 33 00 6d 00 2a 00 61 00 7a 00 65 00 30 00 31 00 78 00 59 00 } //1 OFRna73m*aze01xY
		$a_01_3 = {5c 00 73 00 76 00 63 00 73 00 76 00 72 00 2e 00 65 00 6d 00 70 00 } //1 \svcsvr.emp
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=12
 
}