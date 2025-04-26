
rule PWS_Win32_Frethog_AH{
	meta:
		description = "PWS:Win32/Frethog.AH,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {2f 66 66 31 31 6d 61 69 6c 2f } //2 /ff11mail/
		$a_01_1 = {5c 75 73 72 5c 61 6c 6c 5c 6c 6f 67 69 6e 5f 77 } //1 \usr\all\login_w
		$a_01_2 = {6d 6f 75 73 65 20 57 69 6e 54 65 78 74 3a } //1 mouse WinText:
		$a_01_3 = {68 61 68 61 3a 62 6d 70 } //1 haha:bmp
		$a_01_4 = {26 70 61 73 73 6d 65 6d 3d } //1 &passmem=
		$a_01_5 = {54 6f 6f 6c 68 65 6c 70 33 32 52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 Toolhelp32ReadProcessMemory
		$a_01_6 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //1 SetWindowsHookExA
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=5
 
}