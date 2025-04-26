
rule Worm_Win32_Dorkbot_AR{
	meta:
		description = "Worm:Win32/Dorkbot.AR,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {e9 00 00 00 66 c7 44 24 ?? 00 c3 c7 44 24 ?? 90 90 90 90 90 90 90 90 c7 44 24 ?? 90 90 90 90 90 90 90 90 c7 44 24 ?? 90 90 90 90 90 90 90 90 c7 44 24 ?? 90 90 90 90 90 90 90 90 c7 44 24 ?? 90 90 90 90 90 90 90 90 c7 44 24 ?? e9 00 00 00 66 c7 44 24 ?? 00 c3 e8 } //1
		$a_03_1 = {6a 00 6a 01 8d 45 ff 50 ff 75 0c c6 45 ff 00 6a ff ff 15 ?? ?? ?? ?? 85 c0 78 ?? 80 7d ff e9 75 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}