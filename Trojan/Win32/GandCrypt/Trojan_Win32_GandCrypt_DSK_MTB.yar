
rule Trojan_Win32_GandCrypt_DSK_MTB{
	meta:
		description = "Trojan:Win32/GandCrypt.DSK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_02_0 = {8b 4c 24 70 8b 54 24 30 89 35 ?? ?? ?? ?? 89 35 ?? ?? ?? ?? 8b f7 c1 ee 05 03 74 24 78 03 d9 03 d7 33 da 81 3d ?? ?? ?? ?? 72 07 00 00 75 } //2
		$a_02_1 = {0f b6 c8 56 89 0d ?? ?? ?? ?? 0f b6 81 ?? ?? ?? ?? 03 05 ?? ?? ?? ?? 0f b6 f0 89 35 ?? ?? ?? ?? 81 f9 66 0d 00 00 73 } //2
		$a_00_2 = {8b f0 8b c1 33 d2 f7 f6 41 8a 04 1a 30 44 39 ff 3b 4d 08 72 } //2
		$a_00_3 = {8b 4d fc 8d 94 01 bc 01 00 00 8b 45 08 89 10 8b 4d 08 8b 11 81 ea bc 01 00 00 8b 45 08 89 10 } //2
	condition:
		((#a_02_0  & 1)*2+(#a_02_1  & 1)*2+(#a_00_2  & 1)*2+(#a_00_3  & 1)*2) >=2
 
}