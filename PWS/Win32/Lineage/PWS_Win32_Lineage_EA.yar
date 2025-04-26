
rule PWS_Win32_Lineage_EA{
	meta:
		description = "PWS:Win32/Lineage.EA,SIGNATURE_TYPE_PEHSTR_EXT,33 00 33 00 07 00 00 "
		
	strings :
		$a_00_0 = {2c 61 62 63 4c 61 75 6e 63 68 45 76 } //10 ,abcLaunchEv
		$a_02_1 = {47 45 54 20 2f [0-10] 3f 6d 61 69 6c 62 6f 64 79 3d } //10
		$a_00_2 = {53 76 63 48 6f 73 74 44 4c 4c 2e 65 78 65 } //10 SvcHostDLL.exe
		$a_00_3 = {43 3a 5c 53 65 6e 64 6d 61 69 6c 2e 65 78 65 73 64 66 61 73 64 66 61 73 64 66 64 64 61 30 30 31 } //10 C:\Sendmail.exesdfasdfasdfdda001
		$a_00_4 = {4d 79 20 4d 75 6d 61 } //5 My Muma
		$a_00_5 = {77 69 6e 61 62 63 } //5 winabc
		$a_00_6 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 Software\Microsoft\Windows\CurrentVersion\Run
	condition:
		((#a_00_0  & 1)*10+(#a_02_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*5+(#a_00_5  & 1)*5+(#a_00_6  & 1)*1) >=51
 
}