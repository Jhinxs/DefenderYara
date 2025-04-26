
rule Trojan_Win32_Injuke_RC_MTB{
	meta:
		description = "Trojan:Win32/Injuke.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {99 f7 f9 8b 45 dc 2b 50 14 8b 45 dc 8b 40 0c 0f b6 04 10 03 c6 99 b9 00 01 00 00 f7 f9 89 55 9c } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Injuke_RC_MTB_2{
	meta:
		description = "Trojan:Win32/Injuke.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {6a 32 33 c8 89 0d ?? ?? ?? 00 e8 ?? ?? ?? 00 01 05 ?? ?? ?? 00 e8 ?? ?? ?? 00 8b c8 b8 ?? ?? ?? ?? 33 d2 f7 f1 a3 ?? ?? ?? 00 e8 ?? ?? ?? ff 8b 15 ?? ?? ?? 00 a1 ?? ?? ?? 00 52 50 e8 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Injuke_RC_MTB_3{
	meta:
		description = "Trojan:Win32/Injuke.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {c7 85 50 ff ff ff 3c 00 00 00 c7 85 54 ff ff ff 00 04 00 00 b8 ?? ?? ?? ?? 89 85 60 ff ff ff 8d 85 50 ff ff ff 50 e8 99 38 f6 ff b8 c4 7e 00 00 b8 c4 7e 00 00 } //1
		$a_03_1 = {b8 c4 7e 00 00 ff 75 f4 ff 35 ?? ?? ?? ?? ff 75 ec 31 c9 03 4d e8 ff e1 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}