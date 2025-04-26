
rule Trojan_Win32_Trickbot_CI_MTB{
	meta:
		description = "Trojan:Win32/Trickbot.CI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8d 3c 29 33 d2 88 0c 38 8b c1 f7 74 24 ?? 8b 44 24 ?? 41 8a 14 02 88 17 } //1
		$a_03_1 = {b3 05 8b f2 8a 15 ?? ?? ?? ?? 8a c2 f6 e9 8b 0d ?? ?? ?? ?? 02 c1 f6 eb 8a d8 8a c2 8a d3 8b 1d ?? ?? ?? ?? fe c0 f6 eb 2a d0 2b fb 80 c2 02 8d 2c 89 8a c2 8a 54 24 ?? f6 e9 02 c2 8b 15 ?? ?? ?? ?? 0f af fa 03 fd 2b fb 83 c7 02 0f af f9 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}