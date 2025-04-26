
rule Trojan_Win32_TrickBotCrypt_EQ_MTB{
	meta:
		description = "Trojan:Win32/TrickBotCrypt.EQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {45 33 c9 45 33 c0 ba 04 10 00 00 48 8b 49 40 ff 15 ?? ?? ?? ?? 44 3b f8 0f 8d ?? ?? ?? ?? 3d 01 00 00 8a 06 52 46 30 07 5a 4a 47 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_TrickBotCrypt_EQ_MTB_2{
	meta:
		description = "Trojan:Win32/TrickBotCrypt.EQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {03 ce 89 54 24 ?? 03 c1 8a 0c 3a 8a 15 ?? ?? ?? ?? 8a 18 02 ca 32 d9 8b 4c 24 ?? 88 18 8b 44 24 ?? 40 3b c1 89 44 24 ?? 0f 82 } //1
		$a_81_1 = {21 35 25 6d 6e 49 3c 44 4c 59 52 6b 52 49 69 30 68 79 6e 7a 6a 35 62 58 64 73 33 5e 26 40 21 62 31 39 67 6f 6e 5e 50 63 23 2b 77 4f 76 6b 38 4f 52 67 6c 56 3f 6b 5a 3e 33 7a 68 56 28 5e 61 38 } //1 !5%mnI<DLYRkRIi0hynzj5bXds3^&@!b19gon^Pc#+wOvk8ORglV?kZ>3zhV(^a8
	condition:
		((#a_03_0  & 1)*1+(#a_81_1  & 1)*1) >=1
 
}