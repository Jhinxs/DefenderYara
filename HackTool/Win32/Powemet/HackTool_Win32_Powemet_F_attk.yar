
rule HackTool_Win32_Powemet_F_attk{
	meta:
		description = "HackTool:Win32/Powemet.F!attk,SIGNATURE_TYPE_CMDHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_01_0 = {41 00 45 00 45 00 41 00 62 00 51 00 42 00 7a 00 41 00 47 00 6b 00 41 00 56 00 51 00 42 00 30 00 41 00 47 00 6b 00 41 00 62 00 41 00 42 00 } //3 AEEAbQBzAGkAVQB0AGkAbAB
		$a_00_1 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //1 powershell.exe
		$a_00_2 = {68 00 69 00 64 00 64 00 65 00 6e 00 } //1 hidden
		$a_00_3 = {2d 00 65 00 6e 00 63 00 6f 00 64 00 65 00 64 00 } //1 -encoded
		$a_01_4 = {65 00 6e 00 63 00 6f 00 64 00 65 00 64 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 57 00 77 00 42 00 53 00 41 00 47 00 55 00 41 00 5a 00 67 00 42 00 64 00 41 00 43 00 34 00 } //2 encodedcommand WwBSAGUAZgBdAC4
	condition:
		((#a_01_0  & 1)*3+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*2) >=6
 
}