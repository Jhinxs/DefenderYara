
rule Trojan_Win32_Smokeloader_GJJ_MTB{
	meta:
		description = "Trojan:Win32/Smokeloader.GJJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b d6 c1 ea ?? 8d 3c 33 c7 05 ?? ?? ?? ?? 19 36 6b ff c7 05 ?? ?? ?? ?? ?? ?? ?? ?? 89 54 24 ?? 8b 44 24 ?? 01 44 24 ?? 81 3d } //10
		$a_03_1 = {33 cf 33 c1 2b e8 81 3d ?? ?? ?? ?? ?? ?? ?? ?? 89 44 24 } //10
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10) >=20
 
}
rule Trojan_Win32_Smokeloader_GJJ_MTB_2{
	meta:
		description = "Trojan:Win32/Smokeloader.GJJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {46 ed d3 2b 81 84 24 ?? ?? ?? ?? dc 08 20 39 81 6c 24 ?? 00 d3 54 57 81 6c 24 ?? 9b 3c e4 2c 81 6c 24 ?? 20 1d 72 30 81 6c 24 ?? 22 08 cd 2c 81 44 24 ?? d8 8e 04 41 81 6c 24 ?? 12 93 56 0c 81 44 24 ?? a5 74 dd 47 b8 6e 7e 7a 1b f7 64 24 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}
rule Trojan_Win32_Smokeloader_GJJ_MTB_3{
	meta:
		description = "Trojan:Win32/Smokeloader.GJJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_03_0 = {35 46 1e 40 81 84 24 ?? ?? ?? ?? 2e fb 9c 53 81 84 24 ?? ?? ?? ?? 7f 94 a3 3b 81 ac 24 ?? ?? ?? ?? 3f b2 4a 59 81 ac 24 ?? ?? ?? ?? ab 60 1f 5e 81 ac 24 ?? ?? ?? ?? 25 d9 82 22 81 84 24 ?? ?? ?? ?? 6b da 4b 2f 81 84 24 ?? ?? ?? ?? 25 36 fd 7a 81 6c 24 ?? ec 66 9a 3f b8 a4 9b 8a 28 f7 a4 24 } //10
		$a_03_1 = {35 46 1e 40 81 44 24 ?? 2e fb 9c 53 81 84 24 ?? ?? ?? ?? 7f 94 a3 3b 81 6c 24 ?? 3f b2 4a 59 81 ac 24 ?? ?? ?? ?? ab 60 1f 5e 81 ac 24 ?? ?? ?? ?? 25 d9 82 22 81 44 24 ?? 6b da 4b 2f 81 84 24 ?? ?? ?? ?? 25 36 fd 7a 81 ac 24 ?? ?? ?? ?? ec 66 9a 3f b8 a4 9b 8a 28 f7 a4 24 } //10
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10) >=10
 
}