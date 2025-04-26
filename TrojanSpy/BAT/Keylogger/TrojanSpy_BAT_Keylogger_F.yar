
rule TrojanSpy_BAT_Keylogger_F{
	meta:
		description = "TrojanSpy:BAT/Keylogger.F,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 06 00 00 "
		
	strings :
		$a_03_0 = {1a 13 05 08 28 ?? 00 00 0a 0a 1b 13 05 06 8e b7 17 } //2
		$a_00_1 = {73 65 74 5f 4b } //1 set_K
		$a_00_2 = {43 00 68 00 72 00 6f 00 6d 00 65 00 54 00 6f 00 6f 00 6c 00 62 00 61 00 72 00 73 00 69 00 63 00 6e 00 } //1 ChromeToolbarsicn
		$a_02_3 = {52 00 65 00 74 00 75 00 72 00 6e 00 [0-04] 5b 00 45 00 4e 00 54 00 45 00 52 00 5d 00 } //1
		$a_00_4 = {73 00 72 00 72 00 65 00 61 00 6c 00 5f 00 } //1 srreal_
		$a_00_5 = {73 00 6d 00 74 00 70 00 2e 00 61 00 6f 00 6c 00 2e 00 63 00 6f 00 6d 00 } //1 smtp.aol.com
	condition:
		((#a_03_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=5
 
}