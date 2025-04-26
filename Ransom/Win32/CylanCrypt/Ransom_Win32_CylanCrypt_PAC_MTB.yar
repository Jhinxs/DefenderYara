
rule Ransom_Win32_CylanCrypt_PAC_MTB{
	meta:
		description = "Ransom:Win32/CylanCrypt.PAC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 "
		
	strings :
		$a_01_0 = {8b fa 8b ca c1 c7 0f c1 c1 0d 33 f9 c1 ea 0a 33 fa 8b ce 8b d6 c1 c9 07 c1 c2 0e 33 d1 c1 ee 03 33 d6 03 fa } //10
		$a_03_1 = {0f b6 06 8d 76 01 8b ca c1 e2 08 c1 e9 18 33 c8 33 14 8d ?? ?? ?? ?? 83 eb 01 75 } //1
		$a_03_2 = {0f b6 0e 8d 76 01 8b d0 c1 e0 08 c1 ea 18 33 d1 33 04 95 ?? ?? ?? ?? 83 eb 01 75 } //1
		$a_03_3 = {0b c8 8b 85 ?? ?? ?? ?? 03 c6 03 ca 03 ce 89 85 ?? ?? ?? ?? 8b f0 89 8d ?? ?? ?? ?? c1 c0 07 8b d1 c1 ce 0b 33 f0 c1 ca 0d 8b 85 ?? ?? ?? ?? c1 c8 06 } //1
	condition:
		((#a_01_0  & 1)*10+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=12
 
}