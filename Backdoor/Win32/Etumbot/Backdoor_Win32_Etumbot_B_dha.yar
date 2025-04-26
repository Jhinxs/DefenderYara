
rule Backdoor_Win32_Etumbot_B_dha{
	meta:
		description = "Backdoor:Win32/Etumbot.B!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 "
		
	strings :
		$a_03_0 = {ff ff 41 c6 85 ?? ?? ff ff 50 c6 85 ?? ?? ff ff 50 c6 85 ?? ?? ff ff 44 c6 85 ?? ?? ff ff 41 c6 85 ?? ?? ff ff 54 c6 85 ?? ?? ff ff 41 c6 85 ?? ?? ff ff 00 } //1
		$a_03_1 = {56 57 c6 85 ?? ?? ff ff 61 c6 85 ?? ?? ff ff 66 c6 85 ?? ?? ff ff 6a c6 85 ?? ?? ff ff 6c c6 85 ?? ?? ff ff 66 c6 85 ?? ?? ff ff 6a c6 85 ?? ?? ff ff 73 c6 85 ?? ?? ff ff 73 c6 85 ?? ?? ff ff 6b } //1
		$a_03_2 = {56 57 c6 45 ?? 61 c6 45 ?? 66 c6 45 ?? 6a c6 45 ?? 6c c6 45 ?? 66 c6 45 ?? 6a c6 45 ?? 73 c6 45 ?? 73 c6 45 ?? 6b } //1
		$a_03_3 = {6a 00 68 80 00 00 00 6a 03 6a 00 6a 01 68 00 00 00 c0 8b 45 08 50 ff 15 90 09 10 00 c6 45 ?? 65 c6 45 ?? 78 c6 45 ?? 65 c6 45 ?? 00 } //1
		$a_01_4 = {c6 45 f0 42 c6 45 f1 49 c6 45 f2 4e c6 45 f3 41 c6 45 f4 52 c6 45 f5 59 80 65 f6 00 e9 04 00 00 00 } //1
		$a_03_5 = {ff ff 6b c6 85 ?? ?? ff ff 62 c6 85 ?? ?? ff ff 37 c6 85 ?? ?? ff ff 31 c6 85 ?? ?? ff ff 32 c6 85 ?? ?? ff ff 37 c6 85 ?? ?? ff ff 31 c6 85 ?? ?? ff ff 2e c6 85 ?? ?? ff ff 6c c6 85 ?? ?? ff ff 6f c6 85 ?? ?? ff ff 67 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1) >=3
 
}