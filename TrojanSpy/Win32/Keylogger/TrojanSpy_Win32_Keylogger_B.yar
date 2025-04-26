
rule TrojanSpy_Win32_Keylogger_B{
	meta:
		description = "TrojanSpy:Win32/Keylogger.B,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 2f 2f 73 79 73 6d 6e 67 65 72 2e 65 78 65 } //1 C:\WINDOWS\SYSTEM32//sysmnger.exe
		$a_01_1 = {78 73 65 74 75 70 73 30 31 2e 62 63 72 00 } //1 獸瑥灵び⸱换r
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_3 = {5b 45 6e 74 65 72 5d } //1 [Enter]
		$a_01_4 = {25 2e 32 64 2f 25 2e 32 64 2f 25 34 64 } //1 %.2d/%.2d/%4d
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}