
rule Trojan_Win32_SmokeLoader_GTH_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.GTH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b c1 c1 e8 05 03 45 e4 c7 05 ?? ?? ?? ?? 19 36 6b ff 33 45 0c 33 c7 2b d8 ff 4d f0 } //10
		$a_03_1 = {ec 8d 0c 07 33 4d 0c 89 35 ?? ?? ?? ?? 33 4d f4 89 4d f4 8b 45 f4 01 05 } //10
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10) >=20
 
}