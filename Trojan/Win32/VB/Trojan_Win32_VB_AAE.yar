
rule Trojan_Win32_VB_AAE{
	meta:
		description = "Trojan:Win32/VB.AAE,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 05 00 00 "
		
	strings :
		$a_00_0 = {5c 00 56 00 69 00 72 00 75 00 73 00 20 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 5c 00 43 00 6f 00 70 00 79 00 41 00 5c 00 43 00 6f 00 70 00 79 00 41 00 2e 00 76 00 62 00 70 00 } //5 \Virus Project\CopyA\CopyA.vbp
		$a_00_1 = {5c 00 53 00 74 00 61 00 72 00 74 00 20 00 4d 00 65 00 6e 00 75 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 } //5 \Start Menu\Programs\Startup
		$a_00_2 = {47 65 6e 65 72 61 74 65 20 62 79 20 41 52 45 2d 32 30 30 34 2c 20 41 75 74 68 6f 72 20 62 79 20 50 75 6a 69 20 53 75 73 61 6e 74 6f 24 } //5 Generate by ARE-2004, Author by Puji Susanto$
		$a_00_3 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //1 ShellExecuteA
		$a_01_4 = {45 78 69 74 57 69 6e 64 6f 77 73 45 78 } //1 ExitWindowsEx
	condition:
		((#a_00_0  & 1)*5+(#a_00_1  & 1)*5+(#a_00_2  & 1)*5+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1) >=17
 
}