
rule Worm_Win32_Autorun_LS{
	meta:
		description = "Worm:Win32/Autorun.LS,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 00 65 00 6c 00 65 00 63 00 74 00 20 00 49 00 44 00 5f 00 50 00 43 00 20 00 66 00 72 00 6f 00 6d 00 } //1 Select ID_PC from
		$a_01_1 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //1 autorun.inf
		$a_01_2 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //1 [autorun]
		$a_01_3 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 65 00 78 00 65 00 } //1 autorun.exe
		$a_01_4 = {45 73 74 65 20 61 72 71 75 69 76 6f 20 63 6f 6e 74 } //1 Este arquivo cont
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}