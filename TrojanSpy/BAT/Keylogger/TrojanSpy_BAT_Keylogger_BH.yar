
rule TrojanSpy_BAT_Keylogger_BH{
	meta:
		description = "TrojanSpy:BAT/Keylogger.BH,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 07 00 00 "
		
	strings :
		$a_01_0 = {4b 65 79 6c 6f 67 67 65 72 } //10 Keylogger
		$a_01_1 = {53 63 72 65 65 6e 53 68 6f 74 } //1 ScreenShot
		$a_01_2 = {73 65 6e 64 45 6d 61 69 6c } //1 sendEmail
		$a_01_3 = {73 74 61 72 74 75 70 } //1 startup
		$a_01_4 = {6b 00 6c 00 68 00 6f 00 73 00 74 00 } //1 klhost
		$a_01_5 = {68 00 74 00 6d 00 61 00 69 00 6c 00 33 00 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //1 htmail3@gmail.com
		$a_01_6 = {5c 00 7a 00 6c 00 67 00 2e 00 6e 00 61 00 74 00 } //1 \zlg.nat
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=16
 
}