
rule Trojan_Win32_Trickbot_PG_MTB{
	meta:
		description = "Trojan:Win32/Trickbot.PG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {c7 44 24 0c 01 00 00 00 c7 44 24 08 10 00 00 00 8b 55 10 89 54 24 04 89 04 24 c7 85 ?? ?? ?? ?? 01 00 00 00 ff d1 83 ec 10 85 c0 0f 94 c0 84 c0 74 ?? b8 00 00 00 00 e9 ?? ?? ?? ?? 8b 5d ?? 8b 55 ?? 8b 45 ?? 8d 4d ?? 89 4c 24 10 c7 44 24 0c 01 00 00 00 89 54 24 08 c7 44 24 04 01 68 00 00 89 04 24 c7 85 ?? ?? ?? ?? 01 00 00 00 ff d3 } //1
		$a_00_1 = {c7 45 ac 5a 50 53 5a c7 45 b0 65 62 62 64 c7 45 b4 64 4a 63 4c c7 45 b8 76 74 66 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}