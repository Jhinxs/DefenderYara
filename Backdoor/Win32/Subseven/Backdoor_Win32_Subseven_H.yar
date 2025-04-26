
rule Backdoor_Win32_Subseven_H{
	meta:
		description = "Backdoor:Win32/Subseven.H,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 53 6f 66 74 77 61 72 65 5c 57 6f 77 36 34 33 32 4e 6f 64 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e 5c 53 79 73 74 65 6d } //1 \Software\Wow6432Node\Microsoft\Windows NT\CurrentVersion\Winlogon\System
		$a_01_1 = {45 72 72 6f 72 20 52 65 63 6f 76 65 72 69 6e 67 20 50 61 73 73 77 6f 72 64 73 } //2 Error Recovering Passwords
		$a_01_2 = {53 75 62 53 65 76 65 6e 20 53 65 72 76 65 72 20 69 73 20 72 75 6e 6e 69 6e 67 } //3 SubSeven Server is running
		$a_01_3 = {53 75 62 37 20 32 2e 33 20 32 30 31 30 } //6 Sub7 2.3 2010
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*2+(#a_01_2  & 1)*3+(#a_01_3  & 1)*6) >=12
 
}