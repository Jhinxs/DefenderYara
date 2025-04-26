
rule PWS_Win32_OnLineGames_gen_F{
	meta:
		description = "PWS:Win32/OnLineGames.gen!F,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {70 75 66 6b 73 70 78 72 2e 64 61 74 20 73 73 79 67 77 72 65 } //1 pufkspxr.dat ssygwre
		$a_01_1 = {63 3d 25 73 26 68 3d 25 64 26 76 3d 25 73 26 65 70 3d 25 73 26 64 62 3d 25 64 } //1 c=%s&h=%d&v=%s&ep=%s&db=%d
		$a_01_2 = {25 64 2e 64 6c 6c 00 25 64 2e 65 78 65 } //1
		$a_01_3 = {2e 74 6d 70 00 61 76 70 2e 65 78 65 } //1 琮灭愀灶攮數
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}