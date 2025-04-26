
rule PWS_Win32_OnLineGames_JJ_dll{
	meta:
		description = "PWS:Win32/OnLineGames.JJ!dll,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {c6 45 bc 44 c6 45 bd 49 c6 45 be 53 c6 45 bf 50 c6 45 c0 4c c6 45 c1 41 c6 45 c2 59 88 5d c3 ff 15 } //1
		$a_01_1 = {c6 45 f0 65 c6 45 f1 78 c6 45 f2 70 c6 45 f3 6c c6 45 f4 6f c6 45 f5 72 c6 45 f6 65 c6 45 f7 72 c6 45 f8 2e c6 45 f9 65 c6 45 fa 78 c6 45 fb 65 } //1
		$a_03_2 = {ff 50 c6 45 ?? 25 c6 45 ?? 73 c6 45 ?? 3f c6 45 ?? 61 c6 45 ?? 63 ?? ?? ?? 74 ?? ?? ?? 69 ?? ?? ?? 6f ?? ?? ?? 6e c6 45 ?? 3d ?? ?? ?? 74 ?? ?? ?? 65 ?? ?? ?? 73 ?? ?? ?? 74 c6 45 ?? 6c c6 45 ?? 6f c6 45 ?? 63 c6 45 ?? 6b } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}