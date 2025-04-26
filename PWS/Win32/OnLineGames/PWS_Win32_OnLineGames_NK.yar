
rule PWS_Win32_OnLineGames_NK{
	meta:
		description = "PWS:Win32/OnLineGames.NK,SIGNATURE_TYPE_PEHSTR,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {25 73 3f 7a 6d 61 63 3d 25 73 26 7a 73 70 3d 25 73 26 79 68 70 } //1 %s?zmac=%s&zsp=%s&yhp
		$a_01_1 = {26 70 5f 6d 6e 79 5f 62 61 6c 3d } //1 &p_mny_bal=
		$a_01_2 = {26 70 5f 6c 65 76 65 6c 3d } //1 &p_level=
		$a_01_3 = {58 58 59 48 43 49 4e 44 45 58 } //1 XXYHCINDEX
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}