
rule Worm_Win32_Knupiex_A{
	meta:
		description = "Worm:Win32/Knupiex.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {26 61 63 74 3d 70 6f 73 74 26 61 6c 3d 31 26 66 61 63 65 62 6f 6f 6b 5f 65 78 70 6f 72 74 3d 26 66 69 78 65 64 3d 26 66 72 69 65 6e 64 73 5f 6f 6e 6c 79 3d } //1 &act=post&al=1&facebook_export=&fixed=&friends_only=
		$a_03_1 = {33 d2 f3 a6 0f 85 ?? ?? 00 00 6a 3b 8b 85 ?? ?? ff ff 50 e8 ?? ?? ?? ?? 83 c4 08 89 85 ?? ?? ff ff 8b 4d 0c 89 8d ?? ?? ff ff 8b 95 ?? ?? ff ff 83 c2 01 89 95 ?? ?? ff ff 8b 85 ?? ?? ff ff 8a 08 88 8d ?? ?? ff ff 83 85 ?? ?? ff ff 01 80 bd ?? ?? ff ff 00 75 e2 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}