
rule Trojan_Win32_RedLine_MBCM_MTB{
	meta:
		description = "Trojan:Win32/RedLine.MBCM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {31 74 24 10 8b 44 24 14 31 44 24 10 2b 7c 24 10 81 3d ?? ?? ?? ?? 93 00 00 00 75 } //1
		$a_03_1 = {c1 e8 05 8d 34 2b c7 05 ?? ?? ?? ?? 19 36 6b ff c7 05 ?? ?? ?? ?? ff ff ff ff 89 44 24 14 8b 44 24 20 01 44 24 14 81 3d ?? ?? ?? ?? 79 09 00 00 75 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}