
rule Trojan_Win32_LummaC_A_MTB{
	meta:
		description = "Trojan:Win32/LummaC.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {89 4c 24 04 b8 d1 05 00 00 01 44 24 04 8b 54 24 04 8a 04 32 8b 0d ?? ?? ?? ?? 88 04 31 81 c4 1c 08 00 00 c3 } //1
		$a_01_1 = {8b 4c 24 10 8b c6 c1 e8 05 03 44 24 20 03 cd 33 c1 8d 0c 33 33 c1 2b f8 8b d7 c1 e2 04 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}