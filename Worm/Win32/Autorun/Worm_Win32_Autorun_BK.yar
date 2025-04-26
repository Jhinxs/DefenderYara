
rule Worm_Win32_Autorun_BK{
	meta:
		description = "Worm:Win32/Autorun.BK,SIGNATURE_TYPE_PEHSTR,0f 00 0e 00 07 00 00 "
		
	strings :
		$a_01_0 = {61 74 74 72 69 62 20 2b 68 20 72 75 6e 64 6c 6c 2e 65 78 65 } //10 attrib +h rundll.exe
		$a_01_1 = {6f 70 65 6e 3d 72 75 6e 64 6c 6c 2e 65 78 65 } //1 open=rundll.exe
		$a_01_2 = {41 43 54 49 4f 4e 20 3d 20 43 61 72 70 65 74 61 73 } //1 ACTION = Carpetas
		$a_01_3 = {73 68 65 6c 6c 25 63 6f 70 65 6e 25 63 63 6f 6d 6d 61 6e 64 3d 72 75 6e 64 6c 6c 2e 65 78 65 } //1 shell%copen%ccommand=rundll.exe
		$a_01_4 = {61 74 74 72 69 62 20 2b 68 20 25 63 3a 25 63 61 75 74 6f 72 75 6e 2e 69 6e 66 } //1 attrib +h %c:%cautorun.inf
		$a_01_5 = {43 3a 25 63 57 49 4e 44 4f 57 53 25 63 73 79 73 74 65 6d 33 32 25 63 74 61 73 6b 6b 69 6c 6c 2e 65 78 65 } //1 C:%cWINDOWS%csystem32%ctaskkill.exe
		$a_01_6 = {43 3a 25 63 57 49 4e 44 4f 57 53 25 63 70 63 68 65 61 6c 74 68 25 63 68 65 6c 70 63 74 72 25 63 62 69 6e 61 72 69 65 73 25 63 6d 73 63 6f 6e 66 69 67 2e 65 78 65 } //1 C:%cWINDOWS%cpchealth%chelpctr%cbinaries%cmsconfig.exe
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=14
 
}