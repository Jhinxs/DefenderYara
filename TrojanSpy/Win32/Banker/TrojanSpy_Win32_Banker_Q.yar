
rule TrojanSpy_Win32_Banker_Q{
	meta:
		description = "TrojanSpy:Win32/Banker.Q,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 0a 00 00 "
		
	strings :
		$a_01_0 = {8b 0b 83 c3 04 8b 32 83 c2 04 f3 a4 48 75 f1 } //3
		$a_00_1 = {6e 65 74 76 69 65 77 2e 65 78 65 } //1 netview.exe
		$a_00_2 = {33 36 30 6e 65 74 76 69 65 77 2e 64 6c 6c } //1 360netview.dll
		$a_00_3 = {33 36 30 53 61 66 65 2e 65 78 65 } //1 360Safe.exe
		$a_00_4 = {43 72 65 61 74 65 43 6e 6e 74 56 69 65 77 } //1 CreateCnntView
		$a_00_5 = {72 73 69 6f 6e 5c 52 75 6e 5c 53 68 65 6c 6c 52 75 6e } //1 rsion\Run\ShellRun
		$a_00_6 = {2e 61 6e 74 69 } //1 .anti
		$a_00_7 = {66 75 63 6b 79 6f 75 } //1 fuckyou
		$a_00_8 = {26 70 61 73 73 77 6f 72 64 3d } //1 &password=
		$a_00_9 = {26 6d 6f 6e 65 79 3d } //1 &money=
	condition:
		((#a_01_0  & 1)*3+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1) >=7
 
}