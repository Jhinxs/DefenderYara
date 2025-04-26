
rule PWS_Win32_OnLineGames_EX{
	meta:
		description = "PWS:Win32/OnLineGames.EX,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {33 c0 8d 7d ?? c6 45 ?? e9 } //1
		$a_03_1 = {33 f6 ff 75 08 89 ?? 0c 89 75 ?? c6 45 ?? 60 56 68 ff 0f 1f 00 c6 45 ?? ?? c6 45 ?? ?? c6 45 } //1
		$a_01_2 = {25 73 3f 75 73 3d 25 73 26 70 73 3d 25 73 26 } //1 %s?us=%s&ps=%s&
		$a_01_3 = {2e 64 6c 6c 00 53 65 72 76 69 63 65 4d 61 69 6e 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}