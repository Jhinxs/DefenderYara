
rule PWS_Win32_OnLineGames_CPZ{
	meta:
		description = "PWS:Win32/OnLineGames.CPZ,SIGNATURE_TYPE_PEHSTR_EXT,2a 00 2a 00 07 00 00 "
		
	strings :
		$a_00_0 = {6f 70 65 6e 70 72 6f 63 65 73 73 } //10 openprocess
		$a_00_1 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //10 CreateToolhelp32Snapshot
		$a_00_2 = {00 77 6f 6f 6f 6c } //10 眀潯汯
		$a_00_3 = {6d 69 72 31 2e 64 61 74 } //10 mir1.dat
		$a_00_4 = {6d 6d 2e 64 6c 6c } //1 mm.dll
		$a_00_5 = {6d 69 72 2e 65 78 65 } //1 mir.exe
		$a_01_6 = {46 00 69 00 6c 00 65 00 44 00 65 00 73 00 63 00 72 00 69 00 70 00 74 00 69 00 6f 00 6e 00 00 00 00 00 4a 00 41 00 56 00 41 00 7b 76 46 96 68 56 00 } //-40
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_01_6  & 1)*-40) >=42
 
}