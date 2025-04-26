
rule PWS_Win32_OnLineGames_ZED_dll{
	meta:
		description = "PWS:Win32/OnLineGames.ZED!dll,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {b0 65 b3 6e b1 70 b2 61 } //1
		$a_03_1 = {b0 65 b2 2e b1 78 33 db c6 45 ?? 76 c6 45 ?? 73 c6 45 ?? 6e c6 45 ?? 69 c6 45 ?? 66 c6 45 ?? 66 88 45 } //1
		$a_01_2 = {25 73 3f 61 63 74 3d 67 65 74 70 6f 73 26 64 31 30 3d 25 73 26 64 38 30 3d } //1 %s?act=getpos&d10=%s&d80=
		$a_01_3 = {3f 61 3d 25 73 26 73 3d 25 73 26 75 3d 25 73 26 70 3d 25 73 26 70 69 6e 3d 25 73 26 } //1 ?a=%s&s=%s&u=%s&p=%s&pin=%s&
		$a_01_4 = {6d 69 62 61 6f 2e 61 73 70 } //2 mibao.asp
		$a_01_5 = {77 73 69 64 6e 79 2e 61 73 70 } //2 wsidny.asp
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2) >=6
 
}