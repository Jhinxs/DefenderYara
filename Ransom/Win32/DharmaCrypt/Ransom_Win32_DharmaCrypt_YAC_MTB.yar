
rule Ransom_Win32_DharmaCrypt_YAC_MTB{
	meta:
		description = "Ransom:Win32/DharmaCrypt.YAC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 74 24 54 8a 44 24 27 8b 4c 24 3c 8b 7c 24 4c 8b 2d ?? ?? ?? ?? 32 c3 03 5c 24 5c 88 01 8b 44 24 34 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Ransom_Win32_DharmaCrypt_YAC_MTB_2{
	meta:
		description = "Ransom:Win32/DharmaCrypt.YAC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {83 c6 01 8b 8d ?? ?? ?? ?? 8d 3c 49 8d 14 7a f7 da 03 d0 0f af ca } //1
		$a_01_1 = {8b 85 a8 fe ff ff 33 85 f4 fe ff ff 8b 95 4c ff ff ff 89 85 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}