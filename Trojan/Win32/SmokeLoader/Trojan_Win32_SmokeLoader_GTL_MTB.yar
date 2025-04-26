
rule Trojan_Win32_SmokeLoader_GTL_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.GTL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 "
		
	strings :
		$a_03_0 = {03 45 e0 c7 05 ?? ?? ?? ?? 19 36 6b ff 33 45 0c 33 f8 89 7d f8 8b 45 f8 29 45 fc 81 45 ?? 47 86 c8 61 ff 4d ec } //10
		$a_01_1 = {8b 45 0c 33 45 10 8b 4d 08 89 01 5d c2 0c 00 } //10
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*10) >=20
 
}