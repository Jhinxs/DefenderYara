
rule PWS_Win32_OnLineGames_IA_dll{
	meta:
		description = "PWS:Win32/OnLineGames.IA!dll,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {5c 64 6d 6c 71 2e 69 6e 69 } //1 \dmlq.ini
		$a_01_1 = {62 6f 75 6e 64 61 72 79 3d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 6a 33 34 38 39 30 6a 6b 73 30 39 75 38 33 } //1 boundary=---------------------------j34890jks09u83
		$a_01_2 = {25 73 3f 61 63 74 3d 67 65 74 70 6f 73 26 64 31 30 3d 25 73 26 70 6f 73 3d 26 64 38 30 3d 25 64 } //1 %s?act=getpos&d10=%s&pos=&d80=%d
		$a_01_3 = {25 73 5c 64 6c 6c 63 61 63 68 65 5c 25 73 5f 25 64 2e 6a 70 67 } //1 %s\dllcache\%s_%d.jpg
		$a_01_4 = {25 73 5c 73 79 73 74 65 6d 25 64 2e 65 78 65 } //1 %s\system%d.exe
		$a_01_5 = {b4 f3 c3 f7 c1 fa c8 a8 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}