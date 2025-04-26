
rule Worm_Win32_Autorun_OH{
	meta:
		description = "Worm:Win32/Autorun.OH,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 70 6f 6c 69 63 69 65 73 5c 45 78 70 6c 6f 72 65 72 5c 52 75 6e } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer\Run
		$a_02_1 = {5b 41 75 74 6f 52 75 6e 5d [0-20] 4f 50 45 4e 3d 54 68 75 6d 62 73 2e 65 78 65 [0-20] 73 68 65 6c 6c 65 78 65 63 75 74 65 3d 54 68 75 6d 62 73 2e 65 78 65 [0-20] 73 68 65 6c 6c 5c 41 75 74 6f 5c 63 6f 6d 6d 61 6e 64 3d 54 68 75 6d 62 73 2e 65 78 65 } //1
		$a_00_2 = {5c 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //1 \autorun.inf
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}