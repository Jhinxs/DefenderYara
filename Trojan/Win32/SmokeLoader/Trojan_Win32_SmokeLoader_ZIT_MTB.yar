
rule Trojan_Win32_SmokeLoader_ZIT_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.ZIT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c6 c1 e8 05 c7 05 ?? ?? ?? ?? 19 36 6b ff c7 05 ?? ?? ?? ?? ff ff ff ff 89 44 24 18 8b 44 24 2c 01 44 24 18 81 3d ?? ?? ?? ?? 79 09 00 00 75 ?? 6a 00 ff 15 ?? ?? ?? ?? 8b 4c 24 18 33 cf 31 4c 24 10 8b 44 24 10 29 44 24 14 8b 3d ?? ?? ?? ?? 81 ff 93 00 00 00 74 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}