
rule Worm_Win32_Autorun_AEL{
	meta:
		description = "Worm:Win32/Autorun.AEL,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0a 00 04 00 00 "
		
	strings :
		$a_02_0 = {5b 41 75 74 6f 52 75 6e 5d [0-30] 73 68 65 6c 6c 5c 6f 70 65 6e 5c 43 6f 6d 6d 61 6e 64 3d 73 76 63 68 6f 73 74 2e 65 78 65 } //1
		$a_00_1 = {41 75 74 6f 52 75 6e 2e 69 6e 66 } //1 AutoRun.inf
		$a_00_2 = {33 36 30 73 65 5f 46 72 61 6d 65 } //3 360se_Frame
		$a_00_3 = {63 3a 5c 54 53 54 50 5c 77 69 6e 6c 6f 67 6f 6e 2e 65 78 65 } //6 c:\TSTP\winlogon.exe
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*3+(#a_00_3  & 1)*6) >=10
 
}