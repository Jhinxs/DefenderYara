
rule PWS_Win32_OnLineGames_JD_dll{
	meta:
		description = "PWS:Win32/OnLineGames.JD!dll,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {56 c6 44 24 ?? 53 c6 44 24 ?? 53 c6 44 24 ?? 50 c6 44 24 ?? 51 c6 44 24 ?? 52 c6 44 24 ?? 8d c6 44 24 ?? 85 e8 ?? ?? ?? ?? 83 c4 14 83 f8 ff 74 0c } //1
		$a_03_1 = {56 c6 44 24 ?? 50 c6 44 24 ?? 8d c6 44 24 ?? 4c c6 44 24 ?? 24 c6 44 24 ?? 28 e8 ?? ?? ?? ?? 83 c4 14 83 f8 ff 74 11 } //1
		$a_01_2 = {77 73 69 64 6e 79 2e 61 73 70 } //1 wsidny.asp
		$a_01_3 = {3f 61 3d 25 73 26 73 3d 25 73 26 75 3d 25 73 26 70 3d 25 73 26 70 69 6e 3d 25 73 26 72 3d 25 73 26 6c 3d } //1 ?a=%s&s=%s&u=%s&p=%s&pin=%s&r=%s&l=
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}