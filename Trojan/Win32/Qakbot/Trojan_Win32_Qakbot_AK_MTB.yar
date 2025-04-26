
rule Trojan_Win32_Qakbot_AK_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.AK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_01_0 = {8b 45 a8 03 45 ac 48 89 45 a4 8b 45 a8 8b 55 d8 01 02 } //3
		$a_01_1 = {8b 45 d8 33 18 89 5d a0 8b 45 a0 8b 55 d8 89 02 } //3
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3) >=6
 
}
rule Trojan_Win32_Qakbot_AK_MTB_2{
	meta:
		description = "Trojan:Win32/Qakbot.AK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_01_0 = {67 79 72 74 68 79 33 34 35 74 33 34 35 74 32 34 72 74 34 74 72 67 79 77 65 72 66 61 64 6a 66 6f 69 6f 75 61 68 75 66 68 61 73 75 } //3 gyrthy345t345t24rt4trgywerfadjfoiouahufhasu
		$a_01_1 = {eb c0 7c 50 be ca 6b 41 c8 c1 7a 65 bf d6 08 00 ac a5 08 56 } //3
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3) >=6
 
}
rule Trojan_Win32_Qakbot_AK_MTB_3{
	meta:
		description = "Trojan:Win32/Qakbot.AK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {2b c8 89 4d ?? 0f b6 15 ?? ?? ?? ?? 33 55 ?? 89 55 ?? 0f b6 05 ?? ?? ?? ?? 8b 4d ?? 2b c8 89 4d ?? 0f b6 15 ?? ?? ?? ?? 33 55 ?? 89 55 ?? a1 ?? ?? ?? ?? 03 45 ?? 8a 4d ?? 88 08 e9 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}