
rule Backdoor_Win32_Androme_MR_MTB{
	meta:
		description = "Backdoor:Win32/Androme.MR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,20 00 20 00 07 00 00 "
		
	strings :
		$a_03_0 = {8b 13 89 42 ?? 8b 03 8b 16 89 50 ?? 8b 03 89 06 83 03 ?? 8b 03 2b 45 ?? 3d 90 09 12 00 8b 03 c6 00 ?? 8b 45 ?? 8d 50 ?? 8b 03 e8 } //10
		$a_03_1 = {2b d0 8b c2 c3 90 09 03 00 83 c0 } //10
		$a_00_2 = {76 63 6c 74 65 73 74 33 2e 64 6c 6c } //1 vcltest3.dll
		$a_00_3 = {54 5f 5f 52 55 6e 64 6f 2e 70 61 73 } //1 T__RUndo.pas
		$a_00_4 = {54 5f 5f 52 47 72 6f 75 70 2e 70 61 73 } //1 T__RGroup.pas
		$a_00_5 = {54 5f 5f 5f 6d 79 42 7a 72 } //1 T___myBzr
		$a_00_6 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //10 SOFTWARE\Borland\Delphi\RTL
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*10) >=32
 
}