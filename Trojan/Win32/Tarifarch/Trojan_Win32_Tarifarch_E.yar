
rule Trojan_Win32_Tarifarch_E{
	meta:
		description = "Trojan:Win32/Tarifarch.E,SIGNATURE_TYPE_PEHSTR,23 00 23 00 0c 00 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 42 00 6f 00 72 00 6c 00 61 00 6e 00 64 00 5c 00 44 00 65 00 6c 00 70 00 68 00 69 00 5c 00 4c 00 6f 00 63 00 61 00 6c 00 65 00 73 00 } //10 Software\Borland\Delphi\Locales
		$a_01_1 = {57 69 6e 5a 69 70 20 32 30 31 31 } //10 WinZip 2011
		$a_01_2 = {52 55 53 53 49 41 4e 5f 43 48 41 52 53 45 54 } //10 RUSSIAN_CHARSET
		$a_01_3 = {6d 61 78 73 6d 73 } //1 maxsms
		$a_01_4 = {70 72 69 63 65 } //1 price
		$a_01_5 = {73 6d 73 63 6f 75 6e 74 } //1 smscount
		$a_01_6 = {52 45 42 49 4c 4c 5f 55 52 4c } //1 REBILL_URL
		$a_01_7 = {54 43 6f 75 6e 74 72 79 52 65 63 6f 72 64 41 72 72 61 79 24 } //1 TCountryRecordArray$
		$a_01_8 = {6c 61 62 65 6c 53 6d 73 49 6e 66 6f 43 6f 75 6e 74 } //1 labelSmsInfoCount
		$a_01_9 = {6c 61 62 65 6c 53 6d 73 4e 75 6d 62 65 72 } //1 labelSmsNumber
		$a_01_10 = {6c 61 62 65 6c 53 6d 73 54 65 78 74 } //1 labelSmsText
		$a_01_11 = {63 6f 6e 66 69 72 6d 61 74 69 6f 6e 43 6f 64 65 } //1 confirmationCode
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1) >=35
 
}