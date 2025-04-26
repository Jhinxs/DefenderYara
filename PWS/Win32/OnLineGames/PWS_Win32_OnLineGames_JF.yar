
rule PWS_Win32_OnLineGames_JF{
	meta:
		description = "PWS:Win32/OnLineGames.JF,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 04 00 00 "
		
	strings :
		$a_01_0 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 20 65 72 72 2e } //2 WriteProcessMemory err.
		$a_01_1 = {73 74 61 72 74 20 68 6f 6f 6b 20 67 65 74 63 68 61 72 } //2 start hook getchar
		$a_01_2 = {25 73 3f 61 63 74 69 6f 6e 3d 67 65 74 6d 61 26 75 3d 25 73 } //3 %s?action=getma&u=%s
		$a_01_3 = {25 73 3f 61 63 74 69 6f 6e 3d 73 65 74 6d 70 26 6d 70 3d 25 73 26 75 3d 25 73 } //2 %s?action=setmp&mp=%s&u=%s
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*3+(#a_01_3  & 1)*2) >=9
 
}