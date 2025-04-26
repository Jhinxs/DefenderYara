
rule TrojanSpy_Win32_Ambler_D{
	meta:
		description = "TrojanSpy:Win32/Ambler.D,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_02_0 = {59 33 c9 85 c0 7e 09 80 34 31 ?? 41 3b c8 7c f7 5e c3 } //1
		$a_02_1 = {76 09 80 34 38 ?? 40 3b c6 72 f7 } //1
		$a_02_2 = {8b c2 8b d8 8b c3 8b d0 8b c1 e2 f4 [0-04] e8 } //1
		$a_01_3 = {6a 02 5f c6 06 4d 39 7d f8 c6 46 01 5a 76 25 89 5d fc 29 75 fc 8b c7 6a 28 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_01_3  & 1)*1) >=2
 
}