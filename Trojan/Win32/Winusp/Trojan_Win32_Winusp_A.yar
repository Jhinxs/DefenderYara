
rule Trojan_Win32_Winusp_A{
	meta:
		description = "Trojan:Win32/Winusp.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {20 37 ef c6 c7 ?? ?? b9 79 37 9e 8b 4d 0c 8b 11 89 55 fc 8b 45 0c 8b 48 04 89 4d f0 } //1
		$a_02_1 = {c1 e0 04 0f b6 4d ?? c1 f9 02 0b c1 8b 55 ?? 88 02 8b 45 ?? 83 c0 01 89 45 fc 83 7d 10 00 } //1
		$a_01_2 = {25 64 3a 25 64 3a 25 64 20 25 73 20 65 72 72 3a 25 64 } //1 %d:%d:%d %s err:%d
		$a_01_3 = {3f 00 69 00 3d 00 25 00 73 00 26 00 6d 00 3d 00 75 00 26 00 66 00 3d 00 30 00 26 00 64 00 3d 00 25 00 64 00 } //1 ?i=%s&m=u&f=0&d=%d
	condition:
		((#a_03_0  & 1)*1+(#a_02_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}