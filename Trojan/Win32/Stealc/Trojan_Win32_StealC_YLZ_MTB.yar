
rule Trojan_Win32_StealC_YLZ_MTB{
	meta:
		description = "Trojan:Win32/StealC.YLZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b c8 c1 e1 04 03 cf 03 d0 33 ca 89 4c 24 14 89 2d ?? ?? ?? ?? 8b 44 24 28 01 05 ?? ?? ?? ?? a1 ?? ?? ?? ?? 89 44 24 44 89 6c 24 28 8b 44 24 44 01 44 24 28 8b 44 24 14 33 44 24 28 89 44 24 28 } //1
		$a_03_1 = {31 74 24 14 8b 44 24 28 31 44 24 14 8b 44 24 14 29 44 24 ?? 89 6c 24 24 8b 44 24 38 01 44 24 24 29 44 24 1c ff 4c 24 34 0f 85 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}