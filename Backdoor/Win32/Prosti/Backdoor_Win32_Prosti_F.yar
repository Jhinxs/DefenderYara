
rule Backdoor_Win32_Prosti_F{
	meta:
		description = "Backdoor:Win32/Prosti.F,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {43 3a 5c 57 69 6e 64 6f 77 73 5c 53 63 72 65 65 6e 42 6c 61 7a 65 55 70 67 72 61 64 65 72 2e 62 61 74 } //1 C:\Windows\ScreenBlazeUpgrader.bat
		$a_02_1 = {68 74 74 70 3a 2f 2f 77 77 77 2e 73 63 72 65 65 6e 62 6c 61 7a 65 2e 63 6f 6d 2f [0-08] 2e 70 68 70 3f 69 64 3d } //1
		$a_01_2 = {54 68 69 73 20 77 61 79 20 6d 61 64 45 78 63 65 70 74 20 63 61 6e 27 74 20 69 6e 73 74 61 6c 6c 20 74 68 65 20 74 68 72 65 61 64 20 68 6f 6f 6b 73 } //1 This way madExcept can't install the thread hooks
		$a_02_3 = {8b e5 5d c3 ff ff ff ff ?? 00 00 00 68 74 74 70 3a 2f 2f 77 77 77 2e 73 63 72 65 65 6e 62 6c 61 7a 65 2e 63 6f 6d 2f } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_01_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}