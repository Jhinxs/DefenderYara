
rule PWS_Win32_OnLineGames_CZ{
	meta:
		description = "PWS:Win32/OnLineGames.CZ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {6a 78 73 6a 77 73 61 73 79 73 74 65 6d 2e 67 69 66 } //1 jxsjwsasystem.gif
		$a_03_1 = {c6 06 e9 55 55 8d 83 ?? ?? ?? ?? 57 8b c8 8b d0 c1 e9 08 88 46 01 88 4e 02 c1 ea 10 c1 e8 18 88 56 03 56 88 46 04 e8 } //1
		$a_03_2 = {7e 24 53 56 8b 74 24 18 8b dd 2b de 8a 04 33 55 04 ?? 34 ?? 2c } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}