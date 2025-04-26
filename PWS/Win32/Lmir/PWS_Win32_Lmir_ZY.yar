
rule PWS_Win32_Lmir_ZY{
	meta:
		description = "PWS:Win32/Lmir.ZY,SIGNATURE_TYPE_PEHSTR_EXT,09 00 08 00 09 00 00 "
		
	strings :
		$a_00_0 = {6d 68 6d 61 69 6e 2e 64 6c 6c } //1 mhmain.dll
		$a_00_1 = {5a 74 47 61 6d 65 5f 49 4e } //1 ZtGame_IN
		$a_00_2 = {5a 74 47 61 6d 65 5f 4f 55 54 } //1 ZtGame_OUT
		$a_00_3 = {43 61 6c 6c 4e 65 78 74 48 6f 6f 6b 45 78 } //1 CallNextHookEx
		$a_01_4 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //1 SetWindowsHookExA
		$a_00_5 = {55 6e 68 6f 6f 6b 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 } //1 UnhookWindowsHookEx
		$a_01_6 = {49 6e 74 65 72 6e 65 74 43 6c 6f 73 65 48 61 6e 64 6c 65 } //1 InternetCloseHandle
		$a_01_7 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 41 } //1 InternetOpenA
		$a_01_8 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1 InternetOpenUrlA
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1+(#a_00_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=8
 
}