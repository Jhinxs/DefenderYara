
rule Trojan_Win32_Tarifarch_J{
	meta:
		description = "Trojan:Win32/Tarifarch.J,SIGNATURE_TYPE_PEHSTR,1f 00 1f 00 09 00 00 "
		
	strings :
		$a_01_0 = {52 55 53 53 49 41 4e 5f 43 48 41 52 53 45 54 } //10 RUSSIAN_CHARSET
		$a_01_1 = {57 69 6e 5a 69 70 20 32 30 31 31 } //10 WinZip 2011
		$a_01_2 = {00 67 6e 8f 00 5b 40 53 35 4a 35 42 40 64 4d 59 40 85 70 7e 44 84 70 80 44 82 72 82 44 84 72 } //10
		$a_01_3 = {6c 61 62 65 6c 53 6d 73 4e 75 6d 62 65 72 } //1 labelSmsNumber
		$a_01_4 = {6c 61 62 65 6c 53 6d 73 54 65 78 74 } //1 labelSmsText
		$a_01_5 = {6c 61 62 65 6c 53 6d 73 49 6e 66 6f 43 6f 75 6e 74 } //1 labelSmsInfoCount
		$a_01_6 = {6c 53 77 69 74 63 68 54 6f 4e 6f 72 6d 61 6c 53 6d 73 4d 6f 64 65 31 } //1 lSwitchToNormalSmsMode1
		$a_01_7 = {6c 61 62 65 6c 41 62 6f 6e 65 6e 74 53 6d 73 49 6e 66 6f 43 6c 69 63 6b } //1 labelAbonentSmsInfoClick
		$a_01_8 = {73 00 6d 00 73 00 74 00 61 00 72 00 69 00 66 00 66 00 73 00 2e 00 72 00 75 00 } //1 smstariffs.ru
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=31
 
}