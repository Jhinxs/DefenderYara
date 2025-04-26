
rule Worm_Win32_Autorun_VC{
	meta:
		description = "Worm:Win32/Autorun.VC,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5b 00 41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //1 [Autorun]
		$a_01_1 = {2a 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 28 00 56 00 69 00 72 00 75 00 73 00 29 00 20 00 69 00 6e 00 69 00 20 00 68 00 61 00 6e 00 79 00 61 00 } //1 *Program(Virus) ini hanya
		$a_01_2 = {53 00 68 00 65 00 6c 00 6c 00 5c 00 61 00 75 00 74 00 6f 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 } //1 Shell\auto\command=
		$a_01_3 = {61 00 6e 00 64 00 20 00 61 00 6c 00 6c 00 20 00 49 00 6e 00 64 00 6f 00 6e 00 65 00 73 00 69 00 61 00 6e 00 20 00 56 00 4d 00 2f 00 56 00 43 00 } //1 and all Indonesian VM/VC
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}