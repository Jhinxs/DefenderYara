
rule Trojan_Win32_Vidar_GID_MTB{
	meta:
		description = "Trojan:Win32/Vidar.GID!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 "
		
	strings :
		$a_01_0 = {8b 4d e8 8b 55 ec 8b 45 f0 8b 75 f4 33 c8 33 d6 8b 45 e8 8b 75 ec 03 c1 13 f2 89 45 e8 89 75 ec } //10
		$a_03_1 = {f7 d6 33 ce 03 d1 03 c2 a2 ?? ?? ?? ?? 6a 00 68 ?? ?? ?? ?? 8b 15 } //10
	condition:
		((#a_01_0  & 1)*10+(#a_03_1  & 1)*10) >=20
 
}