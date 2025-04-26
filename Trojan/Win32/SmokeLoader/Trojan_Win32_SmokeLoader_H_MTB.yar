
rule Trojan_Win32_SmokeLoader_H_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.H!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {33 cf 31 4c 24 ?? 8b 44 24 ?? 29 44 24 ?? 8b 15 ?? ?? ?? ?? 81 fa ?? ?? ?? ?? 74 ?? 8d 44 24 } //2
		$a_01_1 = {33 c7 33 c1 2b f0 8b ce c1 e1 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2) >=4
 
}
rule Trojan_Win32_SmokeLoader_H_MTB_2{
	meta:
		description = "Trojan:Win32/SmokeLoader.H!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b d6 c1 ea 05 03 54 24 24 c7 05 ?? ?? ?? ?? 19 36 6b ff 33 d7 31 54 24 14 c7 05 ?? ?? ?? ?? ff ff ff ff 8b 44 24 14 29 44 24 18 8b 44 24 28 29 44 24 10 ff 4c 24 1c 0f 85 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}